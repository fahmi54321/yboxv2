import 'package:yboxv2/models/general/constributor_res.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'track_id_res.g.dart';

part 'track_id_res.freezed.dart';

@freezed
class TrackIdRes with _$TrackIdRes {
  const TrackIdRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory TrackIdRes({
    @JsonKey(name: 'artis_name', defaultValue: '') required String artisName,
    @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
    required int artisNameAnotherId,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'track_title', defaultValue: '') required String trackTitle,
    @JsonKey(name: 'track_version', defaultValue: '')
    required String trackVersion,
    @JsonKey(name: 'track_title_another_id', defaultValue: 0)
    required int trackTitleAnotherId,
    @JsonKey(name: 'isrc', defaultValue: 0) required int isrc,
    @JsonKey(name: 'lang_lyric', defaultValue: 0) required int langYyric,
    @JsonKey(name: 'created_at', defaultValue: '') required String createdAt,
    @JsonKey(name: 'spotify', defaultValue: '') required String spotify,
    @JsonKey(name: 'itunes', defaultValue: '') required String itunes,
    @JsonKey(name: 'other_artis_id', defaultValue: 0) required int otherArtisId,
    @JsonKey(name: 'explisit_lyric', defaultValue: 0)
    required int explisitLyric,
    @JsonKey(name: 'this_track_is', defaultValue: 0) required int thisTrackIs,
    @JsonKey(name: 'p_copyright', defaultValue: '') required String pCopyright,
    @JsonKey(name: 'previews_start_time', defaultValue: 0)
    required int previewsStartTime,
    @JsonKey(name: 'internal_track_id', defaultValue: 0)
    required int internalTrackId,
    @JsonKey(name: 'lyric', defaultValue: '') required String lyric,
    @JsonKey(name: 'contributor_id', defaultValue: 0)
    required int contributorId,
    @JsonKey(name: 'contributor') ConstributorRes? contributor,
    @JsonKey(name: 'lang') LanguageRes? lang,
    @JsonKey(name: 'genre1') GenreRes? genre1,
    @JsonKey(name: 'genre2') GenreRes? genre2,
  }) = _TrackIdRes;

  factory TrackIdRes.fromJson(Map<String, dynamic> json) =>
      _$TrackIdResFromJson(json);
}
