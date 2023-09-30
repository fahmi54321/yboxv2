import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/label_name_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/track_id_res.dart';
import 'package:yboxv2/models/user_res.dart';

part 'details_audio_res.g.dart';

part 'details_audio_res.freezed.dart';

@freezed
class DetailsAudioRes with _$DetailsAudioRes {
  const DetailsAudioRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DetailsAudioRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'cover', defaultValue: '') required String cover,
    @JsonKey(name: 'lang_id') LanguageRes? langId,
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'title_version', defaultValue: '')
    required String titleVersion,
    @JsonKey(name: 'spotify', defaultValue: '') required String spotify,
    @JsonKey(name: 'itunes', defaultValue: '') required String itunes,
    @JsonKey(name: 'genre_1') GenreRes? genre1,
    @JsonKey(name: 'genre_2') GenreRes? genre2,
    @JsonKey(name: 'p_copyright', defaultValue: '') required String pCopyright,
    @JsonKey(name: 'c_copyright', defaultValue: '') required String cCopyright,
    @JsonKey(name: 'released', defaultValue: '') required String released,
    @JsonKey(name: 'label_name') LabelNameRes? labelName,
    @JsonKey(name: 'released_id', defaultValue: 0) required int releasedId,
    @JsonKey(name: 'upc', defaultValue: 0) required int upc,
    @JsonKey(name: 'track_id') TrackIdRes? trackId,
    @JsonKey(name: 'user') UserRes? user,
    @JsonKey(name: 'is_check', defaultValue: 0) required int isCheck,
  }) = _DetailsAudioRes;

  factory DetailsAudioRes.fromJson(Map<String, dynamic> json) =>
      _$DetailsAudioResFromJson(json);
}
