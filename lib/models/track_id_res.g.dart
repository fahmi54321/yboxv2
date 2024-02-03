// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_id_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackIdRes _$$_TrackIdResFromJson(Map json) => $checkedCreate(
      r'_$_TrackIdRes',
      json,
      ($checkedConvert) {
        final val = _$_TrackIdRes(
          artisName: $checkedConvert('artis_name', (v) => v as String? ?? ''),
          artisNameAnotherId:
              $checkedConvert('artis_name_another_id', (v) => v as int? ?? 0),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          trackTitle: $checkedConvert('track_title', (v) => v as String? ?? ''),
          trackVersion:
              $checkedConvert('track_version', (v) => v as String? ?? ''),
          trackTitleAnotherId:
              $checkedConvert('track_title_another_id', (v) => v as int? ?? 0),
          isrc: $checkedConvert('isrc', (v) => v as int? ?? 0),
          langYyric: $checkedConvert('lang_lyric', (v) => v as int? ?? 0),
          createdAt: $checkedConvert('created_at', (v) => v as String? ?? ''),
          spotify: $checkedConvert('spotify', (v) => v as String? ?? ''),
          itunes: $checkedConvert('itunes', (v) => v as String? ?? ''),
          otherArtisId:
              $checkedConvert('other_artis_id', (v) => v as int? ?? 0),
          explisitLyric:
              $checkedConvert('explisit_lyric', (v) => v as int? ?? 0),
          thisTrackIs: $checkedConvert('this_track_is', (v) => v as int? ?? 0),
          pCopyright: $checkedConvert('p_copyright', (v) => v as String? ?? ''),
          previewsStartTime:
              $checkedConvert('previews_start_time', (v) => v as int? ?? 0),
          internalTrackId:
              $checkedConvert('internal_track_id', (v) => v as int? ?? 0),
          lyric: $checkedConvert('lyric', (v) => v as String? ?? ''),
          linkYt: $checkedConvert('link_yt', (v) => v as String? ?? ''),
          contributorId:
              $checkedConvert('contributor_id', (v) => v as int? ?? 0),
          contributor: $checkedConvert(
              'contributor',
              (v) => v == null
                  ? null
                  : ConstributorRes.fromJson(
                      Map<String, dynamic>.from(v as Map))),
          lang: $checkedConvert(
              'lang',
              (v) => v == null
                  ? null
                  : LanguageRes.fromJson(Map<String, dynamic>.from(v as Map))),
          genre1: $checkedConvert(
              'genre1',
              (v) => v == null
                  ? null
                  : GenreRes.fromJson(Map<String, dynamic>.from(v as Map))),
          genre2: $checkedConvert(
              'genre2',
              (v) => v == null
                  ? null
                  : GenreRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'artisName': 'artis_name',
        'artisNameAnotherId': 'artis_name_another_id',
        'trackTitle': 'track_title',
        'trackVersion': 'track_version',
        'trackTitleAnotherId': 'track_title_another_id',
        'langYyric': 'lang_lyric',
        'createdAt': 'created_at',
        'otherArtisId': 'other_artis_id',
        'explisitLyric': 'explisit_lyric',
        'thisTrackIs': 'this_track_is',
        'pCopyright': 'p_copyright',
        'previewsStartTime': 'previews_start_time',
        'internalTrackId': 'internal_track_id',
        'linkYt': 'link_yt',
        'contributorId': 'contributor_id'
      },
    );

Map<String, dynamic> _$$_TrackIdResToJson(_$_TrackIdRes instance) {
  final val = <String, dynamic>{
    'artis_name': instance.artisName,
    'artis_name_another_id': instance.artisNameAnotherId,
    'image': instance.image,
    'cover': instance.cover,
    'track_title': instance.trackTitle,
    'track_version': instance.trackVersion,
    'track_title_another_id': instance.trackTitleAnotherId,
    'isrc': instance.isrc,
    'lang_lyric': instance.langYyric,
    'created_at': instance.createdAt,
    'spotify': instance.spotify,
    'itunes': instance.itunes,
    'other_artis_id': instance.otherArtisId,
    'explisit_lyric': instance.explisitLyric,
    'this_track_is': instance.thisTrackIs,
    'p_copyright': instance.pCopyright,
    'previews_start_time': instance.previewsStartTime,
    'internal_track_id': instance.internalTrackId,
    'lyric': instance.lyric,
    'link_yt': instance.linkYt,
    'contributor_id': instance.contributorId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contributor', instance.contributor?.toJson());
  writeNotNull('lang', instance.lang?.toJson());
  writeNotNull('genre1', instance.genre1?.toJson());
  writeNotNull('genre2', instance.genre2?.toJson());
  return val;
}
