import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yboxv2/models/general/constributor_res.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/label_name_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/track_id_res.dart';
import 'package:yboxv2/models/user_res.dart';

part 'details_track_res.g.dart';

part 'details_track_res.freezed.dart';

@freezed
class DetailsTrackRes with _$DetailsTrackRes {
  const DetailsTrackRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DetailsTrackRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'lang_lyric') LanguageRes? langLyric,
    @JsonKey(name: 'track_title', defaultValue: '') required String title,
    @JsonKey(name: 'artis_name', defaultValue: '') required String artisName,
    @JsonKey(name: 'spotify', defaultValue: '') required String spotify,
    @JsonKey(name: 'itunes', defaultValue: '') required String itunes,
    @JsonKey(name: 'genre_1') GenreRes? genre1,
    @JsonKey(name: 'genre_2') GenreRes? genre2,
    @JsonKey(name: 'p_copyright', defaultValue: '') required String pCopyright,
    @JsonKey(name: 'user') UserRes? user,
    @JsonKey(name: 'isrc', defaultValue: 0) required int isrc,
    @JsonKey(name: 'explisit_lyric', defaultValue: 0)
    required int explisitLyric,
    @JsonKey(name: 'this_track_is', defaultValue: 0) required int thisTrackIs,
    @JsonKey(name: 'previews_start_time', defaultValue: 0)
    required int previewsStartTime,
    @JsonKey(name: 'internal_track_id', defaultValue: 0)
    required int internalTrackId,
    @JsonKey(name: 'lyric', defaultValue: '') required String lyric,
    @JsonKey(name: 'is_check', defaultValue: 0) required int isCheck,
    @JsonKey(name: 'contributor') ConstributorRes? contributor,
  }) = _DetailsTrackRes;

  factory DetailsTrackRes.fromJson(Map<String, dynamic> json) =>
      _$DetailsTrackResFromJson(json);
}
