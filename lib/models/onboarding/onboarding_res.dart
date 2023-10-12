import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_res.g.dart';

part 'onboarding_res.freezed.dart';

@freezed
class OnboardingRes with _$OnboardingRes {
  const OnboardingRes._();

  @JsonSerializable(
      anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
  const factory OnboardingRes({
    @JsonKey(name: 'judul', defaultValue: '') required String judul,
    @JsonKey(name: 'gambar', defaultValue: '') required String gambar,
    @JsonKey(name: 'keterangan', defaultValue: '') required String keterangan,
    @JsonKey(name: 'warna', defaultValue: '') required String warna,
  }) = _OnboardingRes;

  factory OnboardingRes.fromJson(Map<String, dynamic> json) =>
      _$OnboardingResFromJson(json);
}
