import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/seller.dart';
import '../repositories/seller_repository.dart';
import '../state/seller_state.dart';

final sellerRepositoryProvider =
    Provider<SellerRepository>((ref) => SellerRepository());

final sellerStateNotifierProvider =
    StateNotifierProvider<SellerStateNotifier, SellerState>(
        (ref) => SellerStateNotifier(ref.watch(sellerRepositoryProvider)));

class SellerStateNotifier extends StateNotifier<SellerState> {
  final SellerRepository sellerRepository;

  SellerStateNotifier(this.sellerRepository) : super(SellerState()) {
    loadSellers();
  }

  Future<void> loadSellers() async {
    try {
      state = state.copyWith(loading: true);
      List<Seller> sellers = await sellerRepository.fetchSellers();
      state = state.copyWith(loading: false, sellerList: sellers);
    } catch (exception) {
      state = state.copyWith(
          loading: false,
          errorMessage: "Les commercants n'ont pas pu etre charges.");
    }
  }

  Future<void> searchSellers(String term, {int? subCategoryId}) async {
    try {
      state = state.copyWith(loading: true);
      List<Seller> sellers = await sellerRepository.filterSellers(term,
          subCategoryId: subCategoryId);
      print(sellers.length);
      state = state.copyWith(loading: false, filteredSellerList: sellers);
    } catch (exception) {
      state = state.copyWith(
          loading: false,
          errorMessage: "Les commercants n'ont pas pu etre charges.");
    }
  }

  void resetFilterSeller() {
    state = state.copyWith(filteredSellerList: []);
  }
}
