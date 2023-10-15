// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_member_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserMemberRes _$$_UserMemberResFromJson(Map json) => $checkedCreate(
      r'_$_UserMemberRes',
      json,
      ($checkedConvert) {
        final val = _$_UserMemberRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          uuidMsg: $checkedConvert('uuid_msg', (v) => v as String? ?? ''),
          name: $checkedConvert('user', (v) => v as String? ?? ''),
          image: $checkedConvert('image', (v) => v as String? ?? ''),
          tokenMsgNotif:
              $checkedConvert('token_msg_notif', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'uuidMsg': 'uuid_msg',
        'name': 'user',
        'tokenMsgNotif': 'token_msg_notif'
      },
    );

Map<String, dynamic> _$$_UserMemberResToJson(_$_UserMemberRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'uuid_msg': instance.uuidMsg,
    'user': instance.name,
    'image': instance.image,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token_msg_notif', instance.tokenMsgNotif);
  return val;
}
