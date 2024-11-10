import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/product.dart';
import '../repositories/product_repository.dart';
import '../state/product_state.dart';

final productRepositoryProvider =
    Provider<ProductRepository>((ref) => ProductRepository());

final productStateNotifierProvider =
    StateNotifierProvider<ProductStateNotifier, ProductState>(
        (ref) => ProductStateNotifier(ref.watch(productRepositoryProvider)));

class ProductStateNotifier extends StateNotifier<ProductState> {
  final ProductRepository productRepository;

  ProductStateNotifier(this.productRepository) : super(ProductState()) {
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      state = state.copyWith(loading: true);
      List<Product> products = await productRepository.fetchProducts();
      state = state.copyWith(loading: false, productList: products);
    } catch (exception) {
      state = state.copyWith(
          loading: false,
          errorMessage: "Erreur lors du chargement des produits.");
    }
  }

  Future<void> searchProducts(String term,
      {int? subCategoryId, int? categoryId, int? sellerId}) async {
    try {
      state = state.copyWith(loading: true);
      List<Product> products = await productRepository.searchProducts(
        term,
        subCategoryId: subCategoryId,
        categoryId: categoryId,
        sellerId: sellerId,
      );
      state = state.copyWith(loading: false, searchProductList: products);
    } catch (exception) {
      state = state.copyWith(
          loading: false,
          errorMessage: "Erreur lors du chargement des produits.");
    }
  }

  void resetSearchAndFilterungProductList() {
    state = state.copyWith(searchProductList: []);
  }
}
