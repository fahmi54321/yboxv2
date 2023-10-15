import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_member_res.g.dart';

part 'user_member_res.freezed.dart';

@freezed
class UserMemberRes with _$UserMemberRes {
  const UserMemberRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory UserMemberRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'uuid_msg', defaultValue: '') required String uuidMsg,
    @JsonKey(name: 'user', defaultValue: '') required String name,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'token_msg_notif') String? tokenMsgNotif,
  }) = _UserMemberRes;

  factory UserMemberRes.fromJson(Map<String, dynamic> json) =>
      _$UserMemberResFromJson(json);
}
