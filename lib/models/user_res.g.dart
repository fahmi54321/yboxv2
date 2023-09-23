// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRes _$$_UserResFromJson(Map json) => $checkedCreate(
      r'_$_UserRes',
      json,
      ($checkedConvert) {
        final val = _$_UserRes(
          completeName:
              $checkedConvert('complete_name', (v) => v as String? ?? ''),
          email: $checkedConvert('email', (v) => v as String? ?? ''),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {'completeName': 'complete_name'},
    );

Map<String, dynamic> _$$_UserResToJson(_$_UserRes instance) =>
    <String, dynamic>{
      'complete_name': instance.completeName,
      'email': instance.email,
      'image': instance.image,
    };
