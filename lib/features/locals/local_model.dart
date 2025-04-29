
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:houlala_app/features/product_type/product_type.dart';

part 'local_model.freezed.dart';
part 'local_model.g.dart';

@freezed
@HiveType(typeId: 4)
class LocalModel extends HiveObject with _$LocalModel{

  LocalModel._();

  factory LocalModel({
    // ignore: invalid_annotation_target
    @HiveField(0) @JsonKey(name: 'id') int? dbId,

    @HiveField(1)
    String? userId,

    @HiveField(2)
    String? name,

    @HiveField(3)
    String? imageUrl,

    @HiveField(4)
    bool? isStore,
    
    @HiveField(5)
    bool? isVerified,

    @HiveField(6)
    String? description,

    @HiveField(7)
    String? telephoneNumber,

    @HiveField(8)
    String? email,

    @HiveField(9)
    String? website,

    @HiveField(10)
    String? countryCode,
    
    @HiveField(11)
    String? city,
    
    @HiveField(12)
    String? street,
    
    @HiveField(13)
    DateTime?  createdAt,

    @HiveField(14)
    DateTime? updatedAt,

    @HiveField(15)
    ProductType? productType,
  }) = _LocalModel;

  factory LocalModel.fromJson(Map<String, dynamic> json) => _$LocalModelFromJson(json);
}