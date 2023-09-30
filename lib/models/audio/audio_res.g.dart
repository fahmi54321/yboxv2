// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AudioRes _$$_AudioResFromJson(Map json) => $checkedCreate(
      r'_$_AudioRes',
      json,
      ($checkedConvert) {
        final val = _$_AudioRes(
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => DataAudioRes.fromJson(
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

Map<String, dynamic> _$$_AudioResToJson(_$_AudioRes instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };

_$_DataAudioRes _$$_DataAudioResFromJson(Map json) => $checkedCreate(
      r'_$_DataAudioRes',
      json,
      ($checkedConvert) {
        final val = _$_DataAudioRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          title: $checkedConvert('title', (v) => v as String? ?? ''),
          titleVersion:
              $checkedConvert('title_version', (v) => v as String? ?? ''),
          released: $checkedConvert('released', (v) => v as String? ?? ''),
          isCheck: $checkedConvert('is_check', (v) => v as int? ?? 0),
          trackId: $checkedConvert(
              'track_id',
              (v) => v == null
                  ? null
                  : TrackIdRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'titleVersion': 'title_version',
        'isCheck': 'is_check',
        'trackId': 'track_id'
      },
    );

Map<String, dynamic> _$$_DataAudioResToJson(_$_DataAudioRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'cover': instance.cover,
    'title': instance.title,
    'title_version': instance.titleVersion,
    'released': instance.released,
    'is_check': instance.isCheck,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('track_id', instance.trackId?.toJson());
  return val;
}
