// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_name_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LabelNameRes _$$_LabelNameResFromJson(Map json) => $checkedCreate(
      r'_$_LabelNameRes',
      json,
      ($checkedConvert) {
        final val = _$_LabelNameRes(
          uuid: $checkedConvert('uuid', (v) => v as String? ?? ''),
          completeName:
              $checkedConvert('complete_name', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {'completeName': 'complete_name'},
    );

Map<String, dynamic> _$$_LabelNameResToJson(_$_LabelNameRes instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'complete_name': instance.completeName,
    };
