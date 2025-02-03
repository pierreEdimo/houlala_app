import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/features/address/repository/address_repository.dart';
import 'package:houlala_app/features/address/state/address_state.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:houlala_app/main.dart';
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
    final Response response = await addressRepository.createAddress(address);
    if (response.statusCode == HttpStatus.created) {
      Address createdAddress = Address.fromJson(jsonDecode(response.body));
      state =
          state.copyWith(addressList: [...state.addressList, createdAddress]);
      navigatorKey.currentState!.pop();
    } else {
      if (kDebugMode) {
        print(jsonDecode(response.body));
      }
      CustomToastNotification.showErrorAction(
          "erreur lors de la creation des adresses");
      state = state.copyWith(
          errorMessage: "erreur lors de la creation des adresses",
          loading: false);
    }
  }

  Future<void> editAddress(int id, Address address) async {
    final Response response = await addressRepository.editAddress(id, address);
    if (response.statusCode == HttpStatus.noContent) {
      List<Address> updatedAddressList = [
        for (Address existingAddress in List.from(state.addressList))
          if (existingAddress.id == id)
            existingAddress.copyWith(
                firstName: address.firstName,
                lastName: address.lastName,
                street: address.street,
                houseNumber: address.houseNumber,
                city: address.city,
                country: address.country,
                poBox: address.poBox)
          else
            existingAddress
      ];
      state = state.copyWith(addressList: updatedAddressList);
      navigatorKey.currentState!.pop();
    } else {
      if (kDebugMode) {
        print(jsonDecode(response.body));
      }
      CustomToastNotification.showErrorAction(
          "erreur lors de la mise a jour de l'adresse");
      state = state.copyWith(
          errorMessage: "erreur lors de la mise a jour de l'adresse",
          loading: false);
    }
  }

  Future<void> deleteAddress(int id) async {
    final Response response = await addressRepository.deleteAddress(id);
    if (response.statusCode == HttpStatus.noContent) {
      List<Address> updatedAddressList = [
        for (Address existingAddress in List.from(state.addressList))
          if (existingAddress.id != id) existingAddress
      ];
      state = state.copyWith(addressList: updatedAddressList);
    } else {
      CustomToastNotification.showErrorAction(
          "erreur lors de la suppression de l'adresse");
      state = state.copyWith(
          errorMessage: "erreur lors de la suppression de l'adresse",
          loading: false);
    }
  }
}
