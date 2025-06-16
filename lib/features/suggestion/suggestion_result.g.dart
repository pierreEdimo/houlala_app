// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestion_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuggestionResultImpl _$$SuggestionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SuggestionResultImpl(
      query: json['query'] as String?,
      suggestions: (json['suggestions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SuggestionResultImplToJson(
        _$SuggestionResultImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'suggestions': instance.suggestions,
    };
