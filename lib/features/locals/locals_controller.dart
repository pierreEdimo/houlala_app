import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:houlala_app/features/locals/local_model.dart';
import 'local_provider.dart';

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
        .where((seller) => seller.productType!.dbId == categoryId)
        .toList();
  }

  List<LocalModel> get filteredLocals {
    return ref!.watch(localStateNotifierProvider).filteredLocalList;
  }

  LocalModel? getSelectedLocal(int id) {
    return localList.firstWhereOrNull((local) => local.dbId == id);
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
