import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_res.g.dart';

part 'user_res.freezed.dart';

@freezed
class UserRes with _$UserRes {
  const UserRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory UserRes({
    @JsonKey(name: 'complete_name', defaultValue: '')
    required String completeName,
    @JsonKey(name: 'email', defaultValue: '') required String email,
    @JsonKey(name: 'image', defaultValue: '') required String image,
  }) = _UserRes;

  factory UserRes.fromJson(Map<String, dynamic> json) =>
      _$UserResFromJson(json);
}
