// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlbumRes _$$_AlbumResFromJson(Map json) => $checkedCreate(
      r'_$_AlbumRes',
      json,
      ($checkedConvert) {
        final val = _$_AlbumRes(
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => DataAlbumRes.fromJson(
                          Map<String, dynamic>.from(e as Map)))
                      .toList() ??
                  []),
          pagination: $checkedConvert(
              'pagination',
              (v) =>
                  PaginationRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_AlbumResToJson(_$_AlbumRes instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };

_$_DataAlbumRes _$$_DataAlbumResFromJson(Map json) => $checkedCreate(
      r'_$_DataAlbumRes',
      json,
      ($checkedConvert) {
        final val = _$_DataAlbumRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          releaseTitle:
              $checkedConvert('release_title', (v) => v as String? ?? ''),
          titleVersion:
              $checkedConvert('title_version', (v) => v as String? ?? ''),
          releasedDate:
              $checkedConvert('released_date', (v) => v as String? ?? ''),
          trackId: $checkedConvert(
              'track_id',
              (v) => v == null
                  ? null
                  : TrackIdRes.fromJson(Map<String, dynamic>.from(v as Map))),
          isCheck: $checkedConvert('is_check', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {
        'releaseTitle': 'release_title',
        'titleVersion': 'title_version',
        'releasedDate': 'released_date',
        'trackId': 'track_id',
        'isCheck': 'is_check'
      },
    );

Map<String, dynamic> _$$_DataAlbumResToJson(_$_DataAlbumRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'cover': instance.cover,
    'release_title': instance.releaseTitle,
    'title_version': instance.titleVersion,
    'released_date': instance.releasedDate,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('track_id', instance.trackId?.toJson());
  val['is_check'] = instance.isCheck;
  return val;
}
