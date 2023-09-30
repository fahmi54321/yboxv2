import 'package:yboxv2/models/general/pagination_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yboxv2/models/track_id_res.dart';

part 'audio_res.g.dart';

part 'audio_res.freezed.dart';

@freezed
class AudioRes with _$AudioRes {
  const AudioRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory AudioRes({
    @JsonKey(name: 'data', defaultValue: []) required List<DataAudioRes> data,
    @JsonKey(
      name: 'pagination',
    )
    required PaginationRes pagination,
  }) = _AudioRes;

  factory AudioRes.fromJson(Map<String, dynamic> json) =>
      _$AudioResFromJson(json);
}

@freezed
class DataAudioRes with _$DataAudioRes {
  const DataAudioRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataAudioRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'title_version', defaultValue: '')
    required String titleVersion,
    @JsonKey(name: 'released', defaultValue: '') required String released,
    @JsonKey(name: 'is_check', defaultValue: 0) required int isCheck,
    @JsonKey(name: 'track_id') TrackIdRes? trackId,
  }) = _DataAudioRes;

  factory DataAudioRes.fromJson(Map<String, dynamic> json) =>
      _$DataAudioResFromJson(json);
}
