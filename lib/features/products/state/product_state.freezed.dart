// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductState {
  List<Product> get productList => throw _privateConstructorUsedError;
  List<Product> get topSellingProductList => throw _privateConstructorUsedError;
  List<Product> get offerProductList => throw _privateConstructorUsedError;
  List<Product> get historicProductList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<Product> get bookmarkedList => throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {List<Product> productList,
      List<Product> topSellingProductList,
      List<Product> offerProductList,
      List<Product> historicProductList,
      bool loading,
      String errorMessage,
      List<Product> bookmarkedList});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
    Object? topSellingProductList = null,
    Object? offerProductList = null,
    Object? historicProductList = null,
    Object? loading = null,
    Object? errorMessage = null,
    Object? bookmarkedList = null,
  }) {
    return _then(_value.copyWith(
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      topSellingProductList: null == topSellingProductList
          ? _value.topSellingProductList
          : topSellingProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      offerProductList: null == offerProductList
          ? _value.offerProductList
          : offerProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      historicProductList: null == historicProductList
          ? _value.historicProductList
          : historicProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarkedList: null == bookmarkedList
          ? _value.bookmarkedList
          : bookmarkedList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> productList,
      List<Product> topSellingProductList,
      List<Product> offerProductList,
      List<Product> historicProductList,
      bool loading,
      String errorMessage,
      List<Product> bookmarkedList});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
    Object? topSellingProductList = null,
    Object? offerProductList = null,
    Object? historicProductList = null,
    Object? loading = null,
    Object? errorMessage = null,
    Object? bookmarkedList = null,
  }) {
    return _then(_$ProductStateImpl(
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      topSellingProductList: null == topSellingProductList
          ? _value._topSellingProductList
          : topSellingProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      offerProductList: null == offerProductList
          ? _value._offerProductList
          : offerProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      historicProductList: null == historicProductList
          ? _value._historicProductList
          : historicProductList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      bookmarkedList: null == bookmarkedList
          ? _value._bookmarkedList
          : bookmarkedList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  _$ProductStateImpl(
      {final List<Product> productList = const [],
      final List<Product> topSellingProductList = const [],
      final List<Product> offerProductList = const [],
      final List<Product> historicProductList = const [],
      this.loading = false,
      this.errorMessage = '',
      final List<Product> bookmarkedList = const []})
      : _productList = productList,
        _topSellingProductList = topSellingProductList,
        _offerProductList = offerProductList,
        _historicProductList = historicProductList,
        _bookmarkedList = bookmarkedList;

  final List<Product> _productList;
  @override
  @JsonKey()
  List<Product> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  final List<Product> _topSellingProductList;
  @override
  @JsonKey()
  List<Product> get topSellingProductList {
    if (_topSellingProductList is EqualUnmodifiableListView)
      return _topSellingProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topSellingProductList);
  }

  final List<Product> _offerProductList;
  @override
  @JsonKey()
  List<Product> get offerProductList {
    if (_offerProductList is EqualUnmodifiableListView)
      return _offerProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offerProductList);
  }

  final List<Product> _historicProductList;
  @override
  @JsonKey()
  List<Product> get historicProductList {
    if (_historicProductList is EqualUnmodifiableListView)
      return _historicProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historicProductList);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<Product> _bookmarkedList;
  @override
  @JsonKey()
  List<Product> get bookmarkedList {
    if (_bookmarkedList is EqualUnmodifiableListView) return _bookmarkedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarkedList);
  }

  @override
  String toString() {
    return 'ProductState(productList: $productList, topSellingProductList: $topSellingProductList, offerProductList: $offerProductList, historicProductList: $historicProductList, loading: $loading, errorMessage: $errorMessage, bookmarkedList: $bookmarkedList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality()
                .equals(other._topSellingProductList, _topSellingProductList) &&
            const DeepCollectionEquality()
                .equals(other._offerProductList, _offerProductList) &&
            const DeepCollectionEquality()
                .equals(other._historicProductList, _historicProductList) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._bookmarkedList, _bookmarkedList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(_topSellingProductList),
      const DeepCollectionEquality().hash(_offerProductList),
      const DeepCollectionEquality().hash(_historicProductList),
      loading,
      errorMessage,
      const DeepCollectionEquality().hash(_bookmarkedList));

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  factory _ProductState(
      {final List<Product> productList,
      final List<Product> topSellingProductList,
      final List<Product> offerProductList,
      final List<Product> historicProductList,
      final bool loading,
      final String errorMessage,
      final List<Product> bookmarkedList}) = _$ProductStateImpl;

  @override
  List<Product> get productList;
  @override
  List<Product> get topSellingProductList;
  @override
  List<Product> get offerProductList;
  @override
  List<Product> get historicProductList;
  @override
  bool get loading;
  @override
  String get errorMessage;
  @override
  List<Product> get bookmarkedList;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
