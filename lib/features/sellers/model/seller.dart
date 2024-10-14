
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seller.freezed.dart';
part 'seller.g.dart';

@freezed
class Seller with _$Seller{
  factory Seller({
    int? id,
    String? sellerName,
    String? imageUrl,
    bool? isStore,
    String? longDescription,
    String? telephoneNumber,
    String? email,
    String? website,
    String? countryCode,
    String? city,
    String? adress,
    DateTime?  createdAt,
    DateTime? updatedAt
}) = _Seller;

  factory Seller.fromJson(Map<String, dynamic> json) => _$SellerFromJson(json);
}