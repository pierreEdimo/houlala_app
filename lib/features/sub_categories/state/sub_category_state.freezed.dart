// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubCategoryState {
  List<SubCategory> get categoriesList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubCategoryStateCopyWith<SubCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryStateCopyWith<$Res> {
  factory $SubCategoryStateCopyWith(
          SubCategoryState value, $Res Function(SubCategoryState) then) =
      _$SubCategoryStateCopyWithImpl<$Res, SubCategoryState>;
  @useResult
  $Res call(
      {List<SubCategory> categoriesList, bool loading, String errorMessage});
}

/// @nodoc
class _$SubCategoryStateCopyWithImpl<$Res, $Val extends SubCategoryState>
    implements $SubCategoryStateCopyWith<$Res> {
  _$SubCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesList = null,
    Object? loading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      categoriesList: null == categoriesList
          ? _value.categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryStateImplCopyWith<$Res>
    implements $SubCategoryStateCopyWith<$Res> {
  factory _$$SubCategoryStateImplCopyWith(_$SubCategoryStateImpl value,
          $Res Function(_$SubCategoryStateImpl) then) =
      __$$SubCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SubCategory> categoriesList, bool loading, String errorMessage});
}

/// @nodoc
class __$$SubCategoryStateImplCopyWithImpl<$Res>
    extends _$SubCategoryStateCopyWithImpl<$Res, _$SubCategoryStateImpl>
    implements _$$SubCategoryStateImplCopyWith<$Res> {
  __$$SubCategoryStateImplCopyWithImpl(_$SubCategoryStateImpl _value,
      $Res Function(_$SubCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesList = null,
    Object? loading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SubCategoryStateImpl(
      categoriesList: null == categoriesList
          ? _value._categoriesList
          : categoriesList // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubCategoryStateImpl implements _SubCategoryState {
  _$SubCategoryStateImpl(
      {final List<SubCategory> categoriesList = const [],
      this.loading = false,
      this.errorMessage = ''})
      : _categoriesList = categoriesList;

  final List<SubCategory> _categoriesList;
  @override
  @JsonKey()
  List<SubCategory> get categoriesList {
    if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriesList);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SubCategoryState(categoriesList: $categoriesList, loading: $loading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categoriesList, _categoriesList) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoriesList),
      loading,
      errorMessage);

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      __$$SubCategoryStateImplCopyWithImpl<_$SubCategoryStateImpl>(
          this, _$identity);
}

abstract class _SubCategoryState implements SubCategoryState {
  factory _SubCategoryState(
      {final List<SubCategory> categoriesList,
      final bool loading,
      final String errorMessage}) = _$SubCategoryStateImpl;

  @override
  List<SubCategory> get categoriesList;
  @override
  bool get loading;
  @override
  String get errorMessage;

  /// Create a copy of SubCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
