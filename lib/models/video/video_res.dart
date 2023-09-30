import 'package:yboxv2/models/general/pagination_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yboxv2/models/track_id_res.dart';

part 'video_res.g.dart';

part 'video_res.freezed.dart';

@freezed
class VideoRes with _$VideoRes {
  const VideoRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory VideoRes({
    @JsonKey(name: 'data', defaultValue: []) required List<DataVideoRes> data,
    @JsonKey(
      name: 'pagination',
    )
    required PaginationRes pagination,
  }) = _VideoRes;

  factory VideoRes.fromJson(Map<String, dynamic> json) =>
      _$VideoResFromJson(json);
}

@freezed
class DataVideoRes with _$DataVideoRes {
  const DataVideoRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataVideoRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'title_version', defaultValue: '')
    required String titleVersion,
    @JsonKey(name: 'released', defaultValue: '') required String released,
    @JsonKey(name: 'track_id') TrackIdRes? trackId,
    @JsonKey(name: 'is_check', defaultValue: 0) required int isCheck,
  }) = _DataVideoRes;

  factory DataVideoRes.fromJson(Map<String, dynamic> json) =>
      _$DataVideoResFromJson(json);
}
