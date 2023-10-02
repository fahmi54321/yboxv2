import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yboxv2/models/general/bank_res.dart';

part 'akun_bank_res.g.dart';

part 'akun_bank_res.freezed.dart';

@freezed
class DataBankRes with _$DataBankRes {
  const DataBankRes._();

  @JsonSerializable(
    anyMap: true,
    explicitToJson: true,
    checked: true,
    includeIfNull: false,
  )
  const factory DataBankRes({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'nama_akun', defaultValue: '') required String namaAkun,
    @JsonKey(name: 'no_rek', defaultValue: '') required String noRek,
    @JsonKey(name: 'nama_dalam_rekening', defaultValue: '')
    required String namaDalamRekening,
    @JsonKey(name: 'bank') BankRes? bank,
  }) = _DataBankRes;

  factory DataBankRes.fromJson(Map<String, dynamic> json) =>
      _$DataBankResFromJson(json);
}
