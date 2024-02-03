// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoRes _$$_VideoResFromJson(Map json) => $checkedCreate(
      r'_$_VideoRes',
      json,
      ($checkedConvert) {
        final val = _$_VideoRes(
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => DataVideoRes.fromJson(
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

Map<String, dynamic> _$$_VideoResToJson(_$_VideoRes instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };

_$_DataVideoRes _$$_DataVideoResFromJson(Map json) => $checkedCreate(
      r'_$_DataVideoRes',
      json,
      ($checkedConvert) {
        final val = _$_DataVideoRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          title: $checkedConvert('title', (v) => v as String? ?? ''),
          titleVersion:
              $checkedConvert('title_version', (v) => v as String? ?? ''),
          released: $checkedConvert('released', (v) => v as String? ?? ''),
          trackId: $checkedConvert(
              'track_id',
              (v) => v == null
                  ? null
                  : TrackIdRes.fromJson(Map<String, dynamic>.from(v as Map))),
          status: $checkedConvert('status', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {
        'titleVersion': 'title_version',
        'trackId': 'track_id'
      },
    );

Map<String, dynamic> _$$_DataVideoResToJson(_$_DataVideoRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'cover': instance.cover,
    'title': instance.title,
    'title_version': instance.titleVersion,
    'released': instance.released,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('track_id', instance.trackId?.toJson());
  val['status'] = instance.status;
  return val;
}
