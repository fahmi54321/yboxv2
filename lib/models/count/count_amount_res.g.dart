// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_amount_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountAmountRes _$$_CountAmountResFromJson(Map json) => $checkedCreate(
      r'_$_CountAmountRes',
      json,
      ($checkedConvert) {
        final val = _$_CountAmountRes(
          count: $checkedConvert('count', (v) => v as String? ?? ''),
          rp: $checkedConvert('rp', (v) => v as String? ?? ''),
          usd: $checkedConvert('usd', (v) => v as int? ?? 0),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_CountAmountResToJson(_$_CountAmountRes instance) =>
    <String, dynamic>{
      'count': instance.count,
      'rp': instance.rp,
      'usd': instance.usd,
    };
