import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';
import '../providers/local_provider.dart';

class LocalsController {
  WidgetRef? ref;

  LocalsController(this.ref) : super();

  List<LocalModel> get localList {
    return ref!.watch(localStateNotifierProvider).localList;
  }

  List<LocalModel> get topLocalList {
    return ref!.watch(localStateNotifierProvider).topLocalList;
  }

  List<LocalModel> getLocalsListByCategoryId(int categoryId) {
    return localList
        .where((seller) => seller.productType!.id == categoryId)
        .toList();
  }

  List<LocalModel> get fllteredLocals {
    return ref!.watch(localStateNotifierProvider).filteredLocalList;
  }

  LocalModel? getSelectedLocal(int id) {
    return localList.firstWhereOrNull((local) => local.id == id);
  }

  bool get loading {
    return ref!.watch(localStateNotifierProvider).loading;
  }

  void searchLocals(String term, {int? productTypeId}) {
    ref!
        .read(localStateNotifierProvider.notifier)
        .searchLocals(term, productTypeId: productTypeId);
  }

  String get errorMessage {
    return ref!.watch(localStateNotifierProvider).errorMessage;
  }

  void resetFilterLocals() {
    ref!.read(localStateNotifierProvider.notifier).resetFilterLocal();
  }
}
