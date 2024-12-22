// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalModelState {
  List<LocalModel> get localList => throw _privateConstructorUsedError;
  List<LocalModel> get filteredLocalList => throw _privateConstructorUsedError;
  List<LocalModel> get topLocalList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LocalModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalModelStateCopyWith<LocalModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalModelStateCopyWith<$Res> {
  factory $LocalModelStateCopyWith(
          LocalModelState value, $Res Function(LocalModelState) then) =
      _$LocalModelStateCopyWithImpl<$Res, LocalModelState>;
  @useResult
  $Res call(
      {List<LocalModel> localList,
      List<LocalModel> filteredLocalList,
      List<LocalModel> topLocalList,
      bool loading,
      String errorMessage});
}

/// @nodoc
class _$LocalModelStateCopyWithImpl<$Res, $Val extends LocalModelState>
    implements $LocalModelStateCopyWith<$Res> {
  _$LocalModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localList = null,
    Object? filteredLocalList = null,
    Object? topLocalList = null,
    Object? loading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      localList: null == localList
          ? _value.localList
          : localList // ignore: cast_nullable_to_non_nullable
              as List<LocalModel>,
      filteredLocalList: null == filteredLocalList
          ? _value.filteredLocalList
          : filteredLocalList // ignore: cast_nullable_to_non_nullable
              as List<LocalModel>,
      topLocalList: null == topLocalList
          ? _value.topLocalList
          : topLocalList // ignore: cast_nullable_to_non_nullable
              as List<LocalModel>,
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
abstract class _$$LocalModelStateImplCopyWith<$Res>
    implements $LocalModelStateCopyWith<$Res> {
  factory _$$LocalModelStateImplCopyWith(_$LocalModelStateImpl value,
          $Res Function(_$LocalModelStateImpl) then) =
      __$$LocalModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LocalModel> localList,
      List<LocalModel> filteredLocalList,
      List<LocalModel> topLocalList,
      bool loading,
      String errorMessage});
}

/// @nodoc
class __$$LocalModelStateImplCopyWithImpl<$Res>
    extends _$LocalModelStateCopyWithImpl<$Res, _$LocalModelStateImpl>
    implements _$$LocalModelStateImplCopyWith<$Res> {
  __$$LocalModelStateImplCopyWithImpl(
      _$LocalModelStateImpl _value, $Res Function(_$LocalModelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localList = null,
    Object? filteredLocalList = null,
    Object? topLocalList = null,
    Object? loading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LocalModelStateImpl(
      localList: null == localList
          ? _value._localList
          : localList // ignore: cast_nullable_to_non_nullable
              as List<LocalModel>,
      filteredLocalList: null == filteredLocalList
          ? _value._filteredLocalList
          : filteredLocalList // ignore: cast_nullable_to_non_nullable
              as List<LocalModel>,
      topLocalList: null == topLocalList
          ? _value._topLocalList
          : topLocalList // ignore: cast_nullable_to_non_nullable
              as List<LocalModel>,
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

class _$LocalModelStateImpl implements _LocalModelState {
  _$LocalModelStateImpl(
      {final List<LocalModel> localList = const [],
      final List<LocalModel> filteredLocalList = const [],
      final List<LocalModel> topLocalList = const [],
      this.loading = false,
      this.errorMessage = ''})
      : _localList = localList,
        _filteredLocalList = filteredLocalList,
        _topLocalList = topLocalList;

  final List<LocalModel> _localList;
  @override
  @JsonKey()
  List<LocalModel> get localList {
    if (_localList is EqualUnmodifiableListView) return _localList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localList);
  }

  final List<LocalModel> _filteredLocalList;
  @override
  @JsonKey()
  List<LocalModel> get filteredLocalList {
    if (_filteredLocalList is EqualUnmodifiableListView)
      return _filteredLocalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredLocalList);
  }

  final List<LocalModel> _topLocalList;
  @override
  @JsonKey()
  List<LocalModel> get topLocalList {
    if (_topLocalList is EqualUnmodifiableListView) return _topLocalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topLocalList);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'LocalModelState(localList: $localList, filteredLocalList: $filteredLocalList, topLocalList: $topLocalList, loading: $loading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalModelStateImpl &&
            const DeepCollectionEquality()
                .equals(other._localList, _localList) &&
            const DeepCollectionEquality()
                .equals(other._filteredLocalList, _filteredLocalList) &&
            const DeepCollectionEquality()
                .equals(other._topLocalList, _topLocalList) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_localList),
      const DeepCollectionEquality().hash(_filteredLocalList),
      const DeepCollectionEquality().hash(_topLocalList),
      loading,
      errorMessage);

  /// Create a copy of LocalModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalModelStateImplCopyWith<_$LocalModelStateImpl> get copyWith =>
      __$$LocalModelStateImplCopyWithImpl<_$LocalModelStateImpl>(
          this, _$identity);
}

abstract class _LocalModelState implements LocalModelState {
  factory _LocalModelState(
      {final List<LocalModel> localList,
      final List<LocalModel> filteredLocalList,
      final List<LocalModel> topLocalList,
      final bool loading,
      final String errorMessage}) = _$LocalModelStateImpl;

  @override
  List<LocalModel> get localList;
  @override
  List<LocalModel> get filteredLocalList;
  @override
  List<LocalModel> get topLocalList;
  @override
  bool get loading;
  @override
  String get errorMessage;

  /// Create a copy of LocalModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalModelStateImplCopyWith<_$LocalModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
