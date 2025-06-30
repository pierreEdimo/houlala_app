// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SuggestionAdapter extends TypeAdapter<Suggestion> {
  @override
  final int typeId = 6;

  @override
  Suggestion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Suggestion(
      dbId: (fields[0] as num?)?.toInt(),
      userId: fields[1] as String?,
      word: fields[2] as String?,
      searchCategory: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Suggestion obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.dbId)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.word)
      ..writeByte(3)
      ..write(obj.searchCategory);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SuggestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuggestionImpl _$$SuggestionImplFromJson(Map<String, dynamic> json) =>
    _$SuggestionImpl(
      dbId: (json['id'] as num?)?.toInt(),
      userId: json['userId'] as String?,
      word: json['word'] as String?,
      searchCategory: json['searchCategory'] as String?,
    );

Map<String, dynamic> _$$SuggestionImplToJson(_$SuggestionImpl instance) =>
    <String, dynamic>{
      'id': instance.dbId,
      'userId': instance.userId,
      'word': instance.word,
      'searchCategory': instance.searchCategory,
    };
