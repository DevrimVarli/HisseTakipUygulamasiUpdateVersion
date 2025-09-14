import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_params.freezed.dart';
part 'sign_up_params.g.dart';
@freezed
class SignUpParams with _$SignUpParams {
  const factory SignUpParams({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phoneNumber,
  }) = _SignUpParams;
  factory SignUpParams.fromJson(Map<String, dynamic> json) => _$SignUpParamsFromJson(json);
}
