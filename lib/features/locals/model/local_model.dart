
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/product_type/models/product_type.dart';

part 'local_model.freezed.dart';
part 'local_model.g.dart';

@freezed
class LocalModel with _$LocalModel{
  factory LocalModel({
    int? id,
    String? userId,
    String? name,
    String? imageUrl,
    bool? isStore,
    bool? isVerified,
    String? description,
    String? telephoneNumber,
    String? email,
    String? website,
    String? countryCode,
    String? city,
    String? street,
    DateTime?  createdAt,
    DateTime? updatedAt,
    ProductType? productType,
  }) = _LocalModel;

  factory LocalModel.fromJson(Map<String, dynamic> json) => _$LocalModelFromJson(json);
}