import 'package:yboxv2/models/general/pagination_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yboxv2/models/track_id_res.dart';

part 'album_res.g.dart';

part 'album_res.freezed.dart';

@freezed
class AlbumRes with _$AlbumRes {
  const AlbumRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory AlbumRes({
    @JsonKey(name: 'data', defaultValue: []) required List<DataAlbumRes> data,
    @JsonKey(
      name: 'pagination',
    )
    required PaginationRes pagination,
  }) = _AlbumRes;

  factory AlbumRes.fromJson(Map<String, dynamic> json) =>
      _$AlbumResFromJson(json);
}

@freezed
class DataAlbumRes with _$DataAlbumRes {
  const DataAlbumRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataAlbumRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'release_title', defaultValue: '')
    required String releaseTitle,
    @JsonKey(name: 'title_version', defaultValue: '')
    required String titleVersion,
    @JsonKey(name: 'released_date', defaultValue: '')
    required String releasedDate,
    @JsonKey(name: 'track_id') TrackIdRes? trackId,
    @JsonKey(name: 'status', defaultValue: 0) required int status,
  }) = _DataAlbumRes;

  factory DataAlbumRes.fromJson(Map<String, dynamic> json) =>
      _$DataAlbumResFromJson(json);
}
