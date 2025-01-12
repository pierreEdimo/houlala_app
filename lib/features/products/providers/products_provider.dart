import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:http/http.dart';
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
    loadFavoritesProducts();
  }

  Future<void> loadProducts() async {
    try {
      state = state.copyWith(loading: true);
      List<Product> products = await productRepository.fetchProducts();
      state = state.copyWith(loading: false, productList: products);
    } catch (exception) {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des produits.");
      state = state.copyWith(
          loading: false,
          errorMessage: "Erreur lors du chargement des produits.");
    }
  }

  Future<void> fetchSelectedProduct(int id) async {
    try {
      state = state.copyWith(loading: true);
      Product selectedProduct = await productRepository.fetchSingleProduct(id);
      state = state.copyWith(loading: false, selectedProduct: selectedProduct);
    } catch (exception) {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement du produit.");
      state = state.copyWith(
          loading: false,
          errorMessage: "Erreur lors du chargement du produit.");
    }
  }

  Future<void> addProductToFavorite(int id) async {
    final Response response = await productRepository.addProductsToFavorite(id);
    if (response.statusCode == HttpStatus.ok) {
      var existingProduct = state.selectedProduct;
      existingProduct = existingProduct!.copyWith(isFavorite: true);
      state = state.copyWith(
          selectedProduct: existingProduct,
          bookmarkedList: [...state.bookmarkedList, existingProduct]);
    } else {
      CustomToastNotification.showErrorAction("Erreur.");
      state = state.copyWith(loading: false, errorMessage: "Erreur.");
    }
  }

  Future<void> removeProductFromFavorite(int id) async {
    final Response response =
        await productRepository.removeProductFromFavorite(id);
    if (response.statusCode == HttpStatus.ok) {
      var existingProduct = state.selectedProduct;
      existingProduct = existingProduct!.copyWith(isFavorite: false);
      List<Product> updatedBookmarkedlist = [
        for (var product in state.bookmarkedList)
          if (product.id != existingProduct.id) product
      ];
      state = state.copyWith(
          selectedProduct: existingProduct,
          bookmarkedList: updatedBookmarkedlist);
    } else {
      CustomToastNotification.showErrorAction("Erreur.");
      state = state.copyWith(loading: false, errorMessage: "Erreur.");
    }
  }

  Future<void> loadFavoritesProducts() async {
    try {
      state = state.copyWith(loading: false);
      List<Product> products = await productRepository.fetchFavoritesProducts();
      state = state.copyWith(loading: false, bookmarkedList: products);
    } catch (exception) {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des produits.");
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
