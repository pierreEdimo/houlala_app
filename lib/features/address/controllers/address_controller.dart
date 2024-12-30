import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/address/model/address.dart';
import 'package:houlala_app/features/address/providers/address_provider.dart';

class AddressController {
  final WidgetRef? ref;

  AddressController(this.ref): super(); 
  
  String get errorMessage {
    return ref!.watch(addressStateNotifierProvider).errorMessage;
  }

  List<Address> get usersAddresses {
    return ref!.watch(addressStateNotifierProvider).addressList;
  }

  void createAddress(Address address) {
    ref!.read(addressStateNotifierProvider.notifier).createAddress(address);
  }

  void deleteAddress(int id) {
    ref!.read(addressStateNotifierProvider.notifier).deleteAddress(id);
  }

  void editAddress(int id, Address address) {
    ref!.read(addressStateNotifierProvider.notifier).editAddress(id, address);
  }
}