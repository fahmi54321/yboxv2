import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_res.g.dart';

part 'login_res.freezed.dart';

@freezed
class LoginRes with _$LoginRes {
  const LoginRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory LoginRes({
    @JsonKey(name: 'message', defaultValue: '') required String message,
    @JsonKey(name: 'access_token', defaultValue: '')
    required String accessToken,
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'level', defaultValue: 0) required int level,
    @JsonKey(name: 'uuid_msg') String? uuidMsg,
    @JsonKey(name: 'uuid_msg_leader') String? uuidMsgLeader,
    @JsonKey(name: 'leader', defaultValue: '') required String leader,
    @JsonKey(name: 'name', defaultValue: '') required String namaLengkap,
  }) = _LoginRes;

  factory LoginRes.fromJson(Map<String, dynamic> json) =>
      _$LoginResFromJson(json);
}
