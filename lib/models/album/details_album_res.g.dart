// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_album_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailsAlbumRes _$$_DetailsAlbumResFromJson(Map json) => $checkedCreate(
      r'_$_DetailsAlbumRes',
      json,
      ($checkedConvert) {
        final val = _$_DetailsAlbumRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          langId: $checkedConvert(
              'lang_id',
              (v) => v == null
                  ? null
                  : LanguageRes.fromJson(Map<String, dynamic>.from(v as Map))),
          releaseTitle:
              $checkedConvert('release_title', (v) => v as String? ?? ''),
          titleVersion:
              $checkedConvert('title_version', (v) => v as String? ?? ''),
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
          cCopyright: $checkedConvert('c_copyright', (v) => v as String? ?? ''),
          releasedDate:
              $checkedConvert('released_date', (v) => v as String? ?? ''),
          labelName: $checkedConvert(
              'label_name',
              (v) => v == null
                  ? null
                  : LabelNameRes.fromJson(Map<String, dynamic>.from(v as Map))),
          releasedId: $checkedConvert('released_id', (v) => v as int? ?? 0),
          upc: $checkedConvert('upc', (v) => v as int? ?? 0),
          trackId: $checkedConvert(
              'track_id',
              (v) => v == null
                  ? null
                  : TrackIdRes.fromJson(Map<String, dynamic>.from(v as Map))),
          publisher: $checkedConvert(
              'publisher',
              (v) => v == null
                  ? null
                  : PublisherRes.fromJson(Map<String, dynamic>.from(v as Map))),
          user: $checkedConvert(
              'user',
              (v) => v == null
                  ? null
                  : UserRes.fromJson(Map<String, dynamic>.from(v as Map))),
          status: $checkedConvert('status', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {
        'langId': 'lang_id',
        'releaseTitle': 'release_title',
        'titleVersion': 'title_version',
        'genre1': 'genre_1',
        'genre2': 'genre_2',
        'pCopyright': 'p_copyright',
        'cCopyright': 'c_copyright',
        'releasedDate': 'released_date',
        'labelName': 'label_name',
        'releasedId': 'released_id',
        'trackId': 'track_id'
      },
    );

Map<String, dynamic> _$$_DetailsAlbumResToJson(_$_DetailsAlbumRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'cover': instance.cover,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lang_id', instance.langId?.toJson());
  val['release_title'] = instance.releaseTitle;
  val['title_version'] = instance.titleVersion;
  val['spotify'] = instance.spotify;
  val['itunes'] = instance.itunes;
  writeNotNull('genre_1', instance.genre1?.toJson());
  writeNotNull('genre_2', instance.genre2?.toJson());
  val['p_copyright'] = instance.pCopyright;
  val['c_copyright'] = instance.cCopyright;
  val['released_date'] = instance.releasedDate;
  writeNotNull('label_name', instance.labelName?.toJson());
  val['released_id'] = instance.releasedId;
  val['upc'] = instance.upc;
  writeNotNull('track_id', instance.trackId?.toJson());
  writeNotNull('publisher', instance.publisher?.toJson());
  writeNotNull('user', instance.user?.toJson());
  val['status'] = instance.status;
  return val;
}
