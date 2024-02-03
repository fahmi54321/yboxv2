// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackRes _$$_TrackResFromJson(Map json) => $checkedCreate(
      r'_$_TrackRes',
      json,
      ($checkedConvert) {
        final val = _$_TrackRes(
          data: $checkedConvert(
              'data',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => DataTrackRes.fromJson(
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

Map<String, dynamic> _$$_TrackResToJson(_$_TrackRes instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'pagination': instance.pagination.toJson(),
    };

_$_DataTrackRes _$$_DataTrackResFromJson(Map json) => $checkedCreate(
      r'_$_DataTrackRes',
      json,
      ($checkedConvert) {
        final val = _$_DataTrackRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          status: $checkedConvert('status', (v) => v as int? ?? 0),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
          cover: $checkedConvert('cover', (v) => v as String? ?? ''),
          trackTitle: $checkedConvert('track_title', (v) => v as String? ?? ''),
          artisName: $checkedConvert('artis_name', (v) => v as String? ?? ''),
          trackVersion:
              $checkedConvert('track_version', (v) => v as String? ?? ''),
          createdAt: $checkedConvert('created_at', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {
        'trackTitle': 'track_title',
        'artisName': 'artis_name',
        'trackVersion': 'track_version',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_DataTrackResToJson(_$_DataTrackRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'image': instance.image,
      'cover': instance.cover,
      'track_title': instance.trackTitle,
      'artis_name': instance.artisName,
      'track_version': instance.trackVersion,
      'created_at': instance.createdAt,
    };
