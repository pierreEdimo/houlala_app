import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
@HiveType(typeId: 1)
class CategoryModel extends HiveObject with _$CategoryModel {

  CategoryModel._();

  factory CategoryModel({
    // ignore: invalid_annotation_target
    @HiveField(0) @JsonKey(name: 'id') int? dbId,

    @HiveField(1)
    String? name,

    @HiveField(2)
    String? imageUrl,

    @HiveField(3)
    String? route,
  }) = _Category;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}