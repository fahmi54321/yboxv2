import 'package:freezed_annotation/freezed_annotation.dart';

part 'leader_res.g.dart';

part 'leader_res.freezed.dart';

@freezed
class LeaderRes with _$LeaderRes {
  const LeaderRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory LeaderRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'image', defaultValue: '') required String image,
  }) = _LeaderRes;

  factory LeaderRes.fromJson(Map<String, dynamic> json) =>
      _$LeaderResFromJson(json);
}
