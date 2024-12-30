import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/address/model/address.dart';

part 'address_state.freezed.dart';

@freezed
class AddressState with _$AddressState {
  factory AddressState({
    @Default([]) List<Address> addressList,
    @Default('') String errorMessage,
    @Default(true) bool loading,
}) = _AddressState;
}