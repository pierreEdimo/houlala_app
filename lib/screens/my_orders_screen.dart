import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:houlala_app/features/order/controller/order_controller.dart';
import 'package:houlala_app/features/order/model/order_model.dart';
import 'package:houlala_app/helpers/constants.dart';
import 'package:houlala_app/shared_widgets/c_app_bar.dart';
import 'package:houlala_app/shared_widgets/c_container.dart';
import 'package:houlala_app/shared_widgets/c_scaffold.dart';
import 'package:houlala_app/shared_widgets/filter_button.dart';
import 'package:houlala_app/shared_widgets/order_card.dart';
import 'package:sizer/sizer.dart';

class MyOrdersScreen extends ConsumerWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    OrderController orderController = OrderController(ref);

    List<OrderModel> orderList = orderController.orderList;
    bool loading = orderController.loading;
    String errorMessage = orderController.errorMessage;

    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const HeroIcon(HeroIcons.chevronLeft),
        ),
        title: Text(
          'Mes Commandes',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: CustomContainer(
        loading: loading,
        errorMessage: errorMessage,
        child: orderList.isNotEmpty
            ? ListView(
                padding: customDefaultPadding,
                children: orderList
                    .map(
                      (order) => OrderCard(
                        orderModel: order,
                      ),
                    )
                    .toList(),
              )
            : Center(
                child: SizedBox(
                  width: 80.w,
                  child: const Text(
                    "Vous n'avez encore effectue aucunes commandes.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
      ),
    );
  }
}
