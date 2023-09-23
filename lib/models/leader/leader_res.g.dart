// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leader_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeaderRes _$$_LeaderResFromJson(Map json) => $checkedCreate(
      r'_$_LeaderRes',
      json,
      ($checkedConvert) {
        final val = _$_LeaderRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LeaderResToJson(_$_LeaderRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
