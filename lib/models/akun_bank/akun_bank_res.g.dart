// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'akun_bank_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataBankRes _$$_DataBankResFromJson(Map json) => $checkedCreate(
      r'_$_DataBankRes',
      json,
      ($checkedConvert) {
        final val = _$_DataBankRes(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          namaAkun: $checkedConvert('nama_akun', (v) => v as String? ?? ''),
          noRek: $checkedConvert('no_rek', (v) => v as String? ?? ''),
          namaDalamRekening:
              $checkedConvert('nama_dalam_rekening', (v) => v as String? ?? ''),
          bank: $checkedConvert(
              'bank',
              (v) => v == null
                  ? null
                  : BankRes.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'namaAkun': 'nama_akun',
        'noRek': 'no_rek',
        'namaDalamRekening': 'nama_dalam_rekening'
      },
    );

Map<String, dynamic> _$$_DataBankResToJson(_$_DataBankRes instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'nama_akun': instance.namaAkun,
    'no_rek': instance.noRek,
    'nama_dalam_rekening': instance.namaDalamRekening,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bank', instance.bank?.toJson());
  return val;
}
