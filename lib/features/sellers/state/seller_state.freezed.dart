// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SellerState {
  List<Seller> get sellerList => throw _privateConstructorUsedError;
  List<Seller> get filteredSellerList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SellerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SellerStateCopyWith<SellerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerStateCopyWith<$Res> {
  factory $SellerStateCopyWith(
          SellerState value, $Res Function(SellerState) then) =
      _$SellerStateCopyWithImpl<$Res, SellerState>;
  @useResult
  $Res call(
      {List<Seller> sellerList,
      List<Seller> filteredSellerList,
      bool loading,
      String errorMessage});
}

/// @nodoc
class _$SellerStateCopyWithImpl<$Res, $Val extends SellerState>
    implements $SellerStateCopyWith<$Res> {
  _$SellerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SellerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sellerList = null,
    Object? filteredSellerList = null,
    Object? loading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      sellerList: null == sellerList
          ? _value.sellerList
          : sellerList // ignore: cast_nullable_to_non_nullable
              as List<Seller>,
      filteredSellerList: null == filteredSellerList
          ? _value.filteredSellerList
          : filteredSellerList // ignore: cast_nullable_to_non_nullable
              as List<Seller>,
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
abstract class _$$SellerStateImplCopyWith<$Res>
    implements $SellerStateCopyWith<$Res> {
  factory _$$SellerStateImplCopyWith(
          _$SellerStateImpl value, $Res Function(_$SellerStateImpl) then) =
      __$$SellerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Seller> sellerList,
      List<Seller> filteredSellerList,
      bool loading,
      String errorMessage});
}

/// @nodoc
class __$$SellerStateImplCopyWithImpl<$Res>
    extends _$SellerStateCopyWithImpl<$Res, _$SellerStateImpl>
    implements _$$SellerStateImplCopyWith<$Res> {
  __$$SellerStateImplCopyWithImpl(
      _$SellerStateImpl _value, $Res Function(_$SellerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SellerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sellerList = null,
    Object? filteredSellerList = null,
    Object? loading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SellerStateImpl(
      sellerList: null == sellerList
          ? _value._sellerList
          : sellerList // ignore: cast_nullable_to_non_nullable
              as List<Seller>,
      filteredSellerList: null == filteredSellerList
          ? _value._filteredSellerList
          : filteredSellerList // ignore: cast_nullable_to_non_nullable
              as List<Seller>,
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

class _$SellerStateImpl implements _SellerState {
  _$SellerStateImpl(
      {final List<Seller> sellerList = const [],
      final List<Seller> filteredSellerList = const [],
      this.loading = false,
      this.errorMessage = ''})
      : _sellerList = sellerList,
        _filteredSellerList = filteredSellerList;

  final List<Seller> _sellerList;
  @override
  @JsonKey()
  List<Seller> get sellerList {
    if (_sellerList is EqualUnmodifiableListView) return _sellerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sellerList);
  }

  final List<Seller> _filteredSellerList;
  @override
  @JsonKey()
  List<Seller> get filteredSellerList {
    if (_filteredSellerList is EqualUnmodifiableListView)
      return _filteredSellerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredSellerList);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SellerState(sellerList: $sellerList, filteredSellerList: $filteredSellerList, loading: $loading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SellerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._sellerList, _sellerList) &&
            const DeepCollectionEquality()
                .equals(other._filteredSellerList, _filteredSellerList) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sellerList),
      const DeepCollectionEquality().hash(_filteredSellerList),
      loading,
      errorMessage);

  /// Create a copy of SellerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SellerStateImplCopyWith<_$SellerStateImpl> get copyWith =>
      __$$SellerStateImplCopyWithImpl<_$SellerStateImpl>(this, _$identity);
}

abstract class _SellerState implements SellerState {
  factory _SellerState(
      {final List<Seller> sellerList,
      final List<Seller> filteredSellerList,
      final bool loading,
      final String errorMessage}) = _$SellerStateImpl;

  @override
  List<Seller> get sellerList;
  @override
  List<Seller> get filteredSellerList;
  @override
  bool get loading;
  @override
  String get errorMessage;

  /// Create a copy of SellerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SellerStateImplCopyWith<_$SellerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
