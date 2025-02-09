import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_state.freezed.dart';

@freezed
class AboutState with _$AboutState {
  factory AboutState({
    @Default(true) bool loading,
    @Default('') String htmlContent,

  }) = _AboutState;
}