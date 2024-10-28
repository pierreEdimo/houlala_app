
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/sub_categories/models/sub_category.dart';

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
    DateTime? updatedAt,
    SubCategory? subCategory,
}) = _Seller;

  factory Seller.fromJson(Map<String, dynamic> json) => _$SellerFromJson(json);
}