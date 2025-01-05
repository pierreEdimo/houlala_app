import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/auth/model/user_model.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  factory OrderModel({
    int? id,
    UserModel? user,
    LocalModel? local,
    int? totalQuantity,
    double? totalPrice,
    List<CartItem>? cartItems,
}) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}