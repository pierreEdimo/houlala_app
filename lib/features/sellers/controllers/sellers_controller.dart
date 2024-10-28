import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/seller.dart';
import '../providers/seller_provider.dart';

class SellersController {
  WidgetRef? ref;

  SellersController(this.ref) : super();

  List<Seller> get sellerList {
    return ref!.watch(sellerStateNotifierProvider).sellerList;
  }

  List<Seller> getSellerListByCategoryId(int categoryId){
    return sellerList.where((seller) => seller.subCategory!.id == categoryId).toList();
  }

  List<Seller>  get filteredSellers {
    return ref!.watch(sellerStateNotifierProvider).filteredSellerList;
  }

  bool get loading {
    return ref!.watch(sellerStateNotifierProvider).loading;
  }

  void searchSellers(String term, {int? subCategoryId}){
    ref!.read(sellerStateNotifierProvider.notifier).searchSellers(term, subCategoryId: subCategoryId);
  }

  String get errorMessage {
    return ref!.watch(sellerStateNotifierProvider).errorMessage;
  }

  void resetFilterSellers(){
    ref!.read(sellerStateNotifierProvider.notifier).resetFilterSeller();
  }
}
