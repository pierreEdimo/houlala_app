import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.freezed.dart';
part 'register.g.dart';

@freezed
class Register with _$Register{
  factory Register({
    String? email,
    String? userName,
    String? passWord,
}) = _Register;

  factory Register.fromJson(Map<String, dynamic> json) => _$RegisterFromJson(json);
}