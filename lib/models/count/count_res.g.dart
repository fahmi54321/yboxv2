// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountRes _$$_CountResFromJson(Map json) => $checkedCreate(
      r'_$_CountRes',
      json,
      ($checkedConvert) {
        final val = _$_CountRes(
          count: $checkedConvert('count', (v) => v as int? ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CountResToJson(_$_CountRes instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
