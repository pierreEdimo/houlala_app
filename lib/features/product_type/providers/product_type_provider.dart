import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/product_type/state/product_type_map.state.dart';
import '../models/product_type.dart';
import '../repositories/product_type_repository.dart';

final productTypeRepositoryProvider =
    Provider<ProductTypeRepository>((_) => ProductTypeRepository());

final productTypeStateNotifierProvider =
    StateNotifierProvider<ProductTypeStateNotifier, ProductTypeMapState>((ref) =>
        ProductTypeStateNotifier(ref.watch(productTypeRepositoryProvider)));

class ProductTypeStateNotifier extends StateNotifier<ProductTypeMapState> {
  final ProductTypeRepository productTypeRepository;

  ProductTypeStateNotifier(this.productTypeRepository)
      : super(ProductTypeMapState()) {
    loadSubCategories();
  }

  Future<void> loadSubCategories() async {
    try {
      state = state.copyWith(loading: true);
      Map<int, List<ProductType>> productTypeMap =
          await productTypeRepository.fetchMappedTypes();
      state = state.copyWith(loading: false, productTypeMap: productTypeMap);
    } catch (exception) {
      state = state.copyWith(
          loading: false,
          errorMessage: "Les Categories n'ont pas pu etre charges.");
    }
  }
}
