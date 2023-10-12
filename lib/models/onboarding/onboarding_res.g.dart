// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OnboardingRes _$$_OnboardingResFromJson(Map json) => $checkedCreate(
      r'_$_OnboardingRes',
      json,
      ($checkedConvert) {
        final val = _$_OnboardingRes(
          judul: $checkedConvert('judul', (v) => v as String? ?? ''),
          gambar: $checkedConvert('gambar', (v) => v as String? ?? ''),
          keterangan: $checkedConvert('keterangan', (v) => v as String? ?? ''),
          warna: $checkedConvert('warna', (v) => v as String? ?? ''),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_OnboardingResToJson(_$_OnboardingRes instance) =>
    <String, dynamic>{
      'judul': instance.judul,
      'gambar': instance.gambar,
      'keterangan': instance.keterangan,
      'warna': instance.warna,
    };
