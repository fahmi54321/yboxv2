import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_amount_res.g.dart';

part 'count_amount_res.freezed.dart';

@freezed
class CountAmountRes with _$CountAmountRes {
  const CountAmountRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory CountAmountRes({
    @JsonKey(name: 'count', defaultValue: '') required String count,
  }) = _CountAmountRes;

  factory CountAmountRes.fromJson(Map<String, dynamic> json) =>
      _$CountAmountResFromJson(json);
}
