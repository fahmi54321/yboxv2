// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlatformRes _$$_PlatformResFromJson(Map json) => $checkedCreate(
      r'_$_PlatformRes',
      json,
      ($checkedConvert) {
        final val = _$_PlatformRes(
          id: $checkedConvert('id', (v) => v as int? ?? 0),
          nama: $checkedConvert('nama', (v) => v as String? ?? ''),
          gambar: $checkedConvert('gambar', (v) => v as String? ?? ''),
          tanggalAntrian:
              $checkedConvert('tanggal_antrian', (v) => v as String?),
          tanggalSelesai:
              $checkedConvert('tanggal_selesai', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as int? ?? 0),
          isChecked: $checkedConvert('isChecked', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'tanggalAntrian': 'tanggal_antrian',
        'tanggalSelesai': 'tanggal_selesai'
      },
    );

Map<String, dynamic> _$$_PlatformResToJson(_$_PlatformRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'nama': instance.nama,
    'gambar': instance.gambar,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tanggal_antrian', instance.tanggalAntrian);
  writeNotNull('tanggal_selesai', instance.tanggalSelesai);
  val['status'] = instance.status;
  val['isChecked'] = instance.isChecked;
  return val;
}
