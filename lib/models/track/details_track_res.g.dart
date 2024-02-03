// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_track_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailsTrackRes _$$_DetailsTrackResFromJson(Map json) => $checkedCreate(
      r'_$_DetailsTrackRes',
      json,
      ($checkedConvert) {
        final val = _$_DetailsTrackRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
          langLyric: $checkedConvert(
              'lang_lyric',
              (v) => v == null
                  ? null
                  : LanguageRes.fromJson(Map<String, dynamic>.from(v as Map))),
          title: $checkedConvert('track_title', (v) => v as String? ?? ''),
          artisName: $checkedConvert('artis_name', (v) => v as String? ?? ''),
          spotify: $checkedConvert('spotify', (v) => v as String? ?? ''),
          itunes: $checkedConvert('itunes', (v) => v as String? ?? ''),
          genre1: $checkedConvert(
              'genre_1',
              (v) => v == null
                  ? null
                  : GenreRes.fromJson(Map<String, dynamic>.from(v as Map))),
          genre2: $checkedConvert(
              'genre_2',
              (v) => v == null
                  ? null
                  : GenreRes.fromJson(Map<String, dynamic>.from(v as Map))),
          pCopyright: $checkedConvert('p_copyright', (v) => v as String? ?? ''),
          user: $checkedConvert(
              'user',
              (v) => v == null
                  ? null
                  : UserRes.fromJson(Map<String, dynamic>.from(v as Map))),
          isrc: $checkedConvert('isrc', (v) => v as int? ?? 0),
          explisitLyric:
              $checkedConvert('explisit_lyric', (v) => v as int? ?? 0),
          thisTrackIs: $checkedConvert('this_track_is', (v) => v as int? ?? 0),
          previewsStartTime:
              $checkedConvert('previews_start_time', (v) => v as int? ?? 0),
          internalTrackId:
              $checkedConvert('internal_track_id', (v) => v as int? ?? 0),
          lyric: $checkedConvert('lyric', (v) => v as String? ?? ''),
          status: $checkedConvert('status', (v) => v as int? ?? 0),
          linkYt: $checkedConvert('link_yt', (v) => v as String? ?? ''),
          contributor: $checkedConvert(
              'contributor',
              (v) => v == null
                  ? null
                  : ConstributorRes.fromJson(
                      Map<String, dynamic>.from(v as Map))),
          publisher: $checkedConvert(
              'publisher',
              (v) => v == null
                  ? null
                  : PublisherRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'langLyric': 'lang_lyric',
        'title': 'track_title',
        'artisName': 'artis_name',
        'genre1': 'genre_1',
        'genre2': 'genre_2',
        'pCopyright': 'p_copyright',
        'explisitLyric': 'explisit_lyric',
        'thisTrackIs': 'this_track_is',
        'previewsStartTime': 'previews_start_time',
        'internalTrackId': 'internal_track_id',
        'linkYt': 'link_yt'
      },
    );

Map<String, dynamic> _$$_DetailsTrackResToJson(_$_DetailsTrackRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'cover': instance.cover,
    'image': instance.image,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lang_lyric', instance.langLyric?.toJson());
  val['track_title'] = instance.title;
  val['artis_name'] = instance.artisName;
  val['spotify'] = instance.spotify;
  val['itunes'] = instance.itunes;
  writeNotNull('genre_1', instance.genre1?.toJson());
  writeNotNull('genre_2', instance.genre2?.toJson());
  val['p_copyright'] = instance.pCopyright;
  writeNotNull('user', instance.user?.toJson());
  val['isrc'] = instance.isrc;
  val['explisit_lyric'] = instance.explisitLyric;
  val['this_track_is'] = instance.thisTrackIs;
  val['previews_start_time'] = instance.previewsStartTime;
  val['internal_track_id'] = instance.internalTrackId;
  val['lyric'] = instance.lyric;
  val['status'] = instance.status;
  val['link_yt'] = instance.linkYt;
  writeNotNull('contributor', instance.contributor?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
  return val;
}
