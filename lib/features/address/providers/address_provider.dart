import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/features/address/repository/address_repository.dart';
import 'package:houlala_app/features/address/state/address_state.dart';
import 'package:http/http.dart';

final addressRepositoryProvider =
    Provider<AddressRepository>((ref) => AddressRepository());

final addressStateNotifierProvider =
    StateNotifierProvider<AddressStateNotifier, AddressState>(
        (ref) => AddressStateNotifier(ref.watch(addressRepositoryProvider)));

final class AddressStateNotifier extends StateNotifier<AddressState> {
  final AddressRepository addressRepository;

  AddressStateNotifier(this.addressRepository) : super(AddressState()) {
    fetchUsersAddress();
  }

  Future<void> fetchUsersAddress() async {
    try {
      List<Address> addresses = await addressRepository.getUsersAddress();
      state = state.copyWith(
          addressList: addresses, errorMessage: '', loading: false);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      state = state.copyWith(
          errorMessage: 'erreur lors du chargement des adresses',
          loading: false);
    }
  }

  Future<void> createAddress(Address address) async {
    try {
      final Response response = await addressRepository.createAddress(address);
      if (response.statusCode == HttpStatus.created) {
        Address createdAddress = Address.fromJson(jsonDecode(response.body));
        state =
            state.copyWith(addressList: [...state.addressList, createdAddress]);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      state = state.copyWith(
          errorMessage: "erreur lors de la creation des adresses",
          loading: false);
    }
  }

  Future<void> editAddress(int id, Address address) async {
    try {
      final Response response =
          await addressRepository.editAddress(id, address);
      if (response.statusCode == HttpStatus.noContent) {
        List<Address> updatedAddressList = [
          for (Address existingAddress in List.from(state.addressList))
            if (existingAddress.id == id)
              existingAddress.copyWith(
                  street: address.street,
                  houseNumber: address.houseNumber,
                  city: address.city,
                  country: address.country,
                  poBox: address.poBox)
        ];
        state = state.copyWith(addressList: updatedAddressList);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }

      state = state.copyWith(
          errorMessage: "erreur lors de la mise a jour de l'adresse",
          loading: false);
    }
  }

  Future<void> deleteAddress(int id) async {
    try {
      final Response response = await addressRepository.deleteAddress(id);
      if(response.statusCode == HttpStatus.noContent){
        List<Address> updatedAddressList = [
          for (Address existingAddress in List.from(state.addressList))
            if (existingAddress.id != id) existingAddress
        ];
        state = state.copyWith(addressList: updatedAddressList);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }

      state = state.copyWith(
          errorMessage: "erreur lors de la suprression de l'adresse",
          loading: false);
    }
  }
}
