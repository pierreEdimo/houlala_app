import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'suggestion.freezed.dart';
part 'suggestion.g.dart';

@freezed
@HiveType(typeId: 6)
class Suggestion extends HiveObject with _$Suggestion {
  Suggestion._();

  factory Suggestion({
    @HiveField(0)
    @JsonKey(name: 'id')
    int? dbId,
    
    @HiveField(1)
    String? userId,
    
    @HiveField(2)
    String? word,
    
    @HiveField(3)
    String? searchCategory,
  }) = _Suggestion;

  factory Suggestion.fromJson(Map<String, dynamic> json) =>
      _$SuggestionFromJson(json);
}
