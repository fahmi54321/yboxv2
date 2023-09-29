import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/label_name_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/user_res.dart';

import 'album_res.dart';

part 'details_album_res.g.dart';

part 'details_album_res.freezed.dart';

@freezed
class DetailsAlbumRes with _$DetailsAlbumRes {
  const DetailsAlbumRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DetailsAlbumRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'lang_id') LanguageRes? langId,
    @JsonKey(name: 'release_title', defaultValue: '')
    required String releaseTitle,
    @JsonKey(name: 'title_version', defaultValue: '')
    required String titleVersion,
    @JsonKey(name: 'spotify', defaultValue: '') required String spotify,
    @JsonKey(name: 'itunes', defaultValue: '') required String itunes,
    @JsonKey(name: 'genre_1') GenreRes? genre1,
    @JsonKey(name: 'genre_2') GenreRes? genre2,
    @JsonKey(name: 'p_copyright', defaultValue: '') required String pCopyright,
    @JsonKey(name: 'c_copyright', defaultValue: '') required String cCopyright,
    @JsonKey(name: 'released_date', defaultValue: '')
    required String releasedDate,
    @JsonKey(name: 'label_name') LabelNameRes? labelName,
    @JsonKey(name: 'released_id', defaultValue: 0) required int releasedId,
    @JsonKey(name: 'upc', defaultValue: 0) required int upc,
    @JsonKey(name: 'track_id') TrackIdRes? trackId,
    @JsonKey(name: 'user') UserRes? user,
    @JsonKey(name: 'is_check', defaultValue: 0) required int isCheck,
  }) = _DetailsAlbumRes;

  factory DetailsAlbumRes.fromJson(Map<String, dynamic> json) =>
      _$DetailsAlbumResFromJson(json);
}
