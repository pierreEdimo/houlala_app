// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCartItem _$CreateCartItemFromJson(Map<String, dynamic> json) {
  return _CreateCartItem.fromJson(json);
}

/// @nodoc
mixin _$CreateCartItem {
  String? get userId => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  /// Serializes this CreateCartItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCartItemCopyWith<CreateCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCartItemCopyWith<$Res> {
  factory $CreateCartItemCopyWith(
          CreateCartItem value, $Res Function(CreateCartItem) then) =
      _$CreateCartItemCopyWithImpl<$Res, CreateCartItem>;
  @useResult
  $Res call({String? userId, int? productId, int? quantity, int? price});
}

/// @nodoc
class _$CreateCartItemCopyWithImpl<$Res, $Val extends CreateCartItem>
    implements $CreateCartItemCopyWith<$Res> {
  _$CreateCartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCartItemImplCopyWith<$Res>
    implements $CreateCartItemCopyWith<$Res> {
  factory _$$CreateCartItemImplCopyWith(_$CreateCartItemImpl value,
          $Res Function(_$CreateCartItemImpl) then) =
      __$$CreateCartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, int? productId, int? quantity, int? price});
}

/// @nodoc
class __$$CreateCartItemImplCopyWithImpl<$Res>
    extends _$CreateCartItemCopyWithImpl<$Res, _$CreateCartItemImpl>
    implements _$$CreateCartItemImplCopyWith<$Res> {
  __$$CreateCartItemImplCopyWithImpl(
      _$CreateCartItemImpl _value, $Res Function(_$CreateCartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
  }) {
    return _then(_$CreateCartItemImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCartItemImpl implements _CreateCartItem {
  _$CreateCartItemImpl(
      {this.userId, this.productId, this.quantity, this.price});

  factory _$CreateCartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCartItemImplFromJson(json);

  @override
  final String? userId;
  @override
  final int? productId;
  @override
  final int? quantity;
  @override
  final int? price;

  @override
  String toString() {
    return 'CreateCartItem(userId: $userId, productId: $productId, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCartItemImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, productId, quantity, price);

  /// Create a copy of CreateCartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCartItemImplCopyWith<_$CreateCartItemImpl> get copyWith =>
      __$$CreateCartItemImplCopyWithImpl<_$CreateCartItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCartItemImplToJson(
      this,
    );
  }
}

abstract class _CreateCartItem implements CreateCartItem {
  factory _CreateCartItem(
      {final String? userId,
      final int? productId,
      final int? quantity,
      final int? price}) = _$CreateCartItemImpl;

  factory _CreateCartItem.fromJson(Map<String, dynamic> json) =
      _$CreateCartItemImpl.fromJson;

  @override
  String? get userId;
  @override
  int? get productId;
  @override
  int? get quantity;
  @override
  int? get price;

  /// Create a copy of CreateCartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCartItemImplCopyWith<_$CreateCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
