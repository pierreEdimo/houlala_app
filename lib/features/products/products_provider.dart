import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/exception/http_exception.dart';
import 'package:houlala_app/features/products/product.dart';
import 'package:houlala_app/features/products/product_repository.dart';
import 'package:houlala_app/features/products/product_state.dart';
import 'package:houlala_app/helpers/toast_notification.dart';
import 'package:http/http.dart';

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
    } on HttpErrorException {
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
    } on HttpErrorException {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement du produit.");
    }
  }

  Future<void> addProductToFavorite(int id) async {
    final Response response = await productRepository.addProductsToFavorite(id);

    if (response.statusCode != HttpStatus.ok) {
      CustomToastNotification.showErrorAction(
          "Erreur lors de l'ajout du produit avec Id $id dans les Favoris.");
      return;
    }

    var existingProduct = state.selectedProduct;
    existingProduct = existingProduct!.copyWith(isFavorite: true);
    state = state.copyWith(
      selectedProduct: existingProduct,
      bookmarkedList: [...state.bookmarkedList, existingProduct]
    );
  }

  Future<void> removeProductFromFavorite(int id) async {
    final Response response =
        await productRepository.removeProductFromFavorite(id);

    if (response.statusCode != HttpStatus.ok) {
      CustomToastNotification.showErrorAction(
          "Erreur lors de la suppression du produit avec Id $id des Favoris");
      return;
    }

    var existingProduct = state.selectedProduct;
    existingProduct = existingProduct!.copyWith(isFavorite: false);
    List<Product> updatedFavoritesList = [
      for (var product in state.bookmarkedList)
        if (product.dbId != existingProduct.dbId) product
    ];
    state = state.copyWith(
        selectedProduct: existingProduct, bookmarkedList: updatedFavoritesList);
  }

  Future<void> loadFavoritesProducts() async {
    try {
      state = state.copyWith(loading: false);
      List<Product> products = await productRepository.fetchFavoritesProducts();
      state = state.copyWith(loading: false, bookmarkedList: products);
    } on HttpErrorException {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des produits.");
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
    } on HttpErrorException {
      CustomToastNotification.showErrorAction(
          "Erreur lors du chargement des produits.");
    }
  }

  void resetSearchAndFilterungProductList() {
    state = state.copyWith(searchProductList: []);
  }
}
