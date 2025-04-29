import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:houlala_app/features/carts/model/cart_item.dart';
import 'package:houlala_app/features/order/order_model.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/helpers/item_calculations.dart';
import 'package:houlala_app/shared_widgets/c_card.dart';
import 'package:houlala_app/shared_widgets/cart_header.dart';
import 'package:houlala_app/shared_widgets/cart_item_product_image.dart';
import 'package:houlala_app/shared_widgets/cart_product_name.dart';
import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  final OrderModel? orderModel;

  const OrderCard({
    super.key,
    this.orderModel,
  });

  String get createdDate {
    return DateFormat('d MMMM yyyy', 'fr').format(orderModel!.createdAt!);
  }

  double? get totalPaid {
    return ItemCalculations.getTotalPrice(orderModel!.cartItems!);
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          CartHeader(
            name: orderModel!.local!.name!,
            imageUrl: orderModel!.local!.imageUrl!,
          ),
          OrderedProduct(
            cartItems: orderModel!.cartItems!,
          ),
          Row(
            spacing: horizontalPadding,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Commande passée'.toUpperCase(),
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    createdDate,
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Somme'.toUpperCase(),
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Text(
                        '$totalPaid',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'XAF',
                        style: TextStyle(fontSize: priceFontSize),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Status'.toUpperCase(),
                    style: const TextStyle(color: Colors.grey),
                  ),
                  OrderStatus(
                    deliveryStatus: orderModel?.deliveryStatus,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class OrderedProduct extends StatelessWidget {
  final List<CartItem>? cartItems;

  const OrderedProduct({
    super.key,
    this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cartItems!
          .map(
            (item) => SizedBox(
              height: 170,
              child: Row(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: CartItemProductImage(
                      productImageUrl: item.product!.images![0],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CartProductName(
                          name: item.product!.name!,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${item.price}',
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'XAF',
                              style: TextStyle(fontSize: priceFontSize),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}

class OrderStatus extends StatelessWidget {
  final String? deliveryStatus;
  final DateTime? deliveryDate;

  const OrderStatus({super.key, this.deliveryStatus, this.deliveryDate});

  @override
  Widget build(BuildContext context) {
    switch (deliveryStatus) {
      case 'Delivre':
        return Text(
          'Délivré',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
        );
      case 'Route':
        return Text(
          'En route',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
        );
      case 'Traitement':
        return Text(
          'En cours traitement.',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
        );
      case 'Attente':
      default:
        return Text(
          "En Attente",
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700),
        );
    }
  }
}
