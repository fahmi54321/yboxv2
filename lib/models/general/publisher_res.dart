import 'package:freezed_annotation/freezed_annotation.dart';

part 'publisher_res.g.dart';

part 'publisher_res.freezed.dart';

@freezed
class PublisherRes with _$PublisherRes {
  const PublisherRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory PublisherRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
  }) = _PublisherRes;

  factory PublisherRes.fromJson(Map<String, dynamic> json) =>
      _$PublisherResFromJson(json);
}
