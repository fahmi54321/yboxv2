import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_name_res.g.dart';

part 'label_name_res.freezed.dart';

@freezed
class LabelNameRes with _$LabelNameRes {
  const LabelNameRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory LabelNameRes({
    @JsonKey(name: 'uuid', defaultValue: '') required String uuid,
    @JsonKey(name: 'complete_name', defaultValue: '')
    required String completeName,
  }) = _LabelNameRes;

  factory LabelNameRes.fromJson(Map<String, dynamic> json) =>
      _$LabelNameResFromJson(json);
}
