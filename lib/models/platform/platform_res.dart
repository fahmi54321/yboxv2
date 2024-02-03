import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform_res.g.dart';

part 'platform_res.freezed.dart';

@unfreezed
class PlatformRes with _$PlatformRes {
  PlatformRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  factory PlatformRes({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'nama', defaultValue: '') required String nama,
    @JsonKey(name: 'gambar', defaultValue: '') required String gambar,
    @JsonKey(name: 'tanggal_antrian') String? tanggalAntrian,
    @JsonKey(name: 'tanggal_selesai') String? tanggalSelesai,
    @JsonKey(name: 'status', defaultValue: 0) required int status,
    @JsonKey(name: 'isChecked', defaultValue: false) required bool isChecked,
  }) = _PlatformRes;

  factory PlatformRes.fromJson(Map<String, dynamic> json) =>
      _$PlatformResFromJson(json);
}
