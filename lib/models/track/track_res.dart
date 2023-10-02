import 'package:yboxv2/models/general/pagination_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_res.g.dart';

part 'track_res.freezed.dart';

@freezed
class TrackRes with _$TrackRes {
  const TrackRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory TrackRes({
    @JsonKey(name: 'data', defaultValue: []) required List<DataTrackRes> data,
    @JsonKey(
      name: 'pagination',
    )
    required PaginationRes pagination,
  }) = _TrackRes;

  factory TrackRes.fromJson(Map<String, dynamic> json) =>
      _$TrackResFromJson(json);
}

@freezed
class DataTrackRes with _$DataTrackRes {
  const DataTrackRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataTrackRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'is_check', defaultValue: 0) required int isCheck,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'track_title', defaultValue: '') required String trackTitle,
    @JsonKey(name: 'artis_name', defaultValue: '') required String artisName,
    @JsonKey(name: 'track_version', defaultValue: '')
    required String trackVersion,
    @JsonKey(name: 'created_at', defaultValue: '') required String createdAt,
  }) = _DataTrackRes;

  factory DataTrackRes.fromJson(Map<String, dynamic> json) =>
      _$DataTrackResFromJson(json);
}
