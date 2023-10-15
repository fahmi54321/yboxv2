// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRes _$$_LoginResFromJson(Map json) => $checkedCreate(
      r'_$_LoginRes',
      json,
      ($checkedConvert) {
        final val = _$_LoginRes(
          message: $checkedConvert('message', (v) => v as String? ?? ''),
          accessToken:
              $checkedConvert('access_token', (v) => v as String? ?? ''),
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          level: $checkedConvert('level', (v) => v as int? ?? 0),
          uuidMsg: $checkedConvert('uuid_msg', (v) => v as String?),
          tokenMssgNotif:
              $checkedConvert('token_mssg_notif', (v) => v as String?),
          uuidMsgLeader:
              $checkedConvert('uuid_msg_leader', (v) => v as String?),
          tokenMssgNotifLeader:
              $checkedConvert('token_mssg_notif_leader', (v) => v as String?),
          leader: $checkedConvert('leader', (v) => v as String? ?? ''),
          namaLengkap: $checkedConvert('name', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {
        'accessToken': 'access_token',
        'uuidMsg': 'uuid_msg',
        'tokenMssgNotif': 'token_mssg_notif',
        'uuidMsgLeader': 'uuid_msg_leader',
        'tokenMssgNotifLeader': 'token_mssg_notif_leader',
        'namaLengkap': 'name'
      },
    );

Map<String, dynamic> _$$_LoginResToJson(_$_LoginRes instance) {
  final val = <String, dynamic>{
    'message': instance.message,
    'access_token': instance.accessToken,
    'id': instance.id,
    'level': instance.level,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uuid_msg', instance.uuidMsg);
  writeNotNull('token_mssg_notif', instance.tokenMssgNotif);
  writeNotNull('uuid_msg_leader', instance.uuidMsgLeader);
  writeNotNull('token_mssg_notif_leader', instance.tokenMssgNotifLeader);
  val['leader'] = instance.leader;
  val['name'] = instance.namaLengkap;
  return val;
}
