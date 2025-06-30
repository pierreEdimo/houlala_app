// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Suggestion _$SuggestionFromJson(Map<String, dynamic> json) {
  return _Suggestion.fromJson(json);
}

/// @nodoc
mixin _$Suggestion {
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get dbId => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get userId => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get word => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get searchCategory => throw _privateConstructorUsedError;

  /// Serializes this Suggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Suggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuggestionCopyWith<Suggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionCopyWith<$Res> {
  factory $SuggestionCopyWith(
          Suggestion value, $Res Function(Suggestion) then) =
      _$SuggestionCopyWithImpl<$Res, Suggestion>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int? dbId,
      @HiveField(1) String? userId,
      @HiveField(2) String? word,
      @HiveField(3) String? searchCategory});
}

/// @nodoc
class _$SuggestionCopyWithImpl<$Res, $Val extends Suggestion>
    implements $SuggestionCopyWith<$Res> {
  _$SuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Suggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dbId = freezed,
    Object? userId = freezed,
    Object? word = freezed,
    Object? searchCategory = freezed,
  }) {
    return _then(_value.copyWith(
      dbId: freezed == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      searchCategory: freezed == searchCategory
          ? _value.searchCategory
          : searchCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestionImplCopyWith<$Res>
    implements $SuggestionCopyWith<$Res> {
  factory _$$SuggestionImplCopyWith(
          _$SuggestionImpl value, $Res Function(_$SuggestionImpl) then) =
      __$$SuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int? dbId,
      @HiveField(1) String? userId,
      @HiveField(2) String? word,
      @HiveField(3) String? searchCategory});
}

/// @nodoc
class __$$SuggestionImplCopyWithImpl<$Res>
    extends _$SuggestionCopyWithImpl<$Res, _$SuggestionImpl>
    implements _$$SuggestionImplCopyWith<$Res> {
  __$$SuggestionImplCopyWithImpl(
      _$SuggestionImpl _value, $Res Function(_$SuggestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Suggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dbId = freezed,
    Object? userId = freezed,
    Object? word = freezed,
    Object? searchCategory = freezed,
  }) {
    return _then(_$SuggestionImpl(
      dbId: freezed == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      word: freezed == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String?,
      searchCategory: freezed == searchCategory
          ? _value.searchCategory
          : searchCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestionImpl extends _Suggestion {
  _$SuggestionImpl(
      {@HiveField(0) @JsonKey(name: 'id') this.dbId,
      @HiveField(1) this.userId,
      @HiveField(2) this.word,
      @HiveField(3) this.searchCategory})
      : super._();

  factory _$SuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestionImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int? dbId;
  @override
  @HiveField(1)
  final String? userId;
  @override
  @HiveField(2)
  final String? word;
  @override
  @HiveField(3)
  final String? searchCategory;

  @override
  String toString() {
    return 'Suggestion(dbId: $dbId, userId: $userId, word: $word, searchCategory: $searchCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionImpl &&
            (identical(other.dbId, dbId) || other.dbId == dbId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.searchCategory, searchCategory) ||
                other.searchCategory == searchCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dbId, userId, word, searchCategory);

  /// Create a copy of Suggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionImplCopyWith<_$SuggestionImpl> get copyWith =>
      __$$SuggestionImplCopyWithImpl<_$SuggestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestionImplToJson(
      this,
    );
  }
}

abstract class _Suggestion extends Suggestion {
  factory _Suggestion(
      {@HiveField(0) @JsonKey(name: 'id') final int? dbId,
      @HiveField(1) final String? userId,
      @HiveField(2) final String? word,
      @HiveField(3) final String? searchCategory}) = _$SuggestionImpl;
  _Suggestion._() : super._();

  factory _Suggestion.fromJson(Map<String, dynamic> json) =
      _$SuggestionImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get dbId;
  @override
  @HiveField(1)
  String? get userId;
  @override
  @HiveField(2)
  String? get word;
  @override
  @HiveField(3)
  String? get searchCategory;

  /// Create a copy of Suggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuggestionImplCopyWith<_$SuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
