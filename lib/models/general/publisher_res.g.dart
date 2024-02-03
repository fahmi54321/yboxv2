// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublisherRes _$$_PublisherResFromJson(Map json) => $checkedCreate(
      r'_$_PublisherRes',
      json,
      ($checkedConvert) {
        final val = _$_PublisherRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_PublisherResToJson(_$_PublisherRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
