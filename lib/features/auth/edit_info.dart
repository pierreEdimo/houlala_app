import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_info.freezed.dart';
part 'edit_info.g.dart';

@freezed
class EditInfo with _$EditInfo{
  factory EditInfo({
    String? userName,
    String? email,
    String? lastName,
    String? firstName,
    String? phoneNumber,
}) = _EditInfo;

  factory EditInfo.fromJson(Map<String, dynamic> json) => _$EditInfoFromJson(json);
}