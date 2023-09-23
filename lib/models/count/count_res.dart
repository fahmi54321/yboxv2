import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_res.g.dart';

part 'count_res.freezed.dart';

@freezed
class CountRes with _$CountRes {
  const CountRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory CountRes({
    @JsonKey(name: 'count', defaultValue: 0) required int count,
  }) = _CountRes;

  factory CountRes.fromJson(Map<String, dynamic> json) =>
      _$CountResFromJson(json);
}
