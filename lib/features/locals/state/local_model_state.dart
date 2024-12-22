import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:houlala_app/features/locals/model/local_model.dart';

part 'local_model_state.freezed.dart';

@freezed
class LocalModelState with _$LocalModelState {
  factory LocalModelState({
    @Default([]) List<LocalModel> localList,
    @Default([]) List<LocalModel> filteredLocalList,
    @Default([]) List<LocalModel> topLocalList,
    @Default(false) bool loading,
    @Default('') String errorMessage,
  }) = _LocalModelState;
}
