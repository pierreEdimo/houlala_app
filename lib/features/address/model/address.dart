import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    int? id,
    String? lastName,
    String? firstName,
    String? street,
    String? country,
    String? poBox,
    String? city,
    String? houseNumber
}) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}