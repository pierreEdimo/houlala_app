import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/seller.dart';
import '../provideries/seller_provider.dart';

class SellersController {
  WidgetRef? ref;

  SellersController(this.ref) : super();

  List<Seller> get sellerList {
    return ref!.watch(sellerStateNotifierProvider).sellerList;
  }

  bool get loading {
    return ref!.watch(sellerStateNotifierProvider).loading;
  }

  String get errorMessage {
    return ref!.watch(sellerStateNotifierProvider).errorMessage;
  }
}
