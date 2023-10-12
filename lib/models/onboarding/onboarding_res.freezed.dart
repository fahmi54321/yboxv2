// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingRes _$OnboardingResFromJson(Map<String, dynamic> json) {
  return _OnboardingRes.fromJson(json);
}

/// @nodoc
mixin _$OnboardingRes {
  @JsonKey(name: 'judul', defaultValue: '')
  String get judul => throw _privateConstructorUsedError;
  @JsonKey(name: 'gambar', defaultValue: '')
  String get gambar => throw _privateConstructorUsedError;
  @JsonKey(name: 'keterangan', defaultValue: '')
  String get keterangan => throw _privateConstructorUsedError;
  @JsonKey(name: 'warna', defaultValue: '')
  String get warna => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingResCopyWith<OnboardingRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingResCopyWith<$Res> {
  factory $OnboardingResCopyWith(
          OnboardingRes value, $Res Function(OnboardingRes) then) =
      _$OnboardingResCopyWithImpl<$Res, OnboardingRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'judul', defaultValue: '') String judul,
      @JsonKey(name: 'gambar', defaultValue: '') String gambar,
      @JsonKey(name: 'keterangan', defaultValue: '') String keterangan,
      @JsonKey(name: 'warna', defaultValue: '') String warna});
}

/// @nodoc
class _$OnboardingResCopyWithImpl<$Res, $Val extends OnboardingRes>
    implements $OnboardingResCopyWith<$Res> {
  _$OnboardingResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = null,
    Object? gambar = null,
    Object? keterangan = null,
    Object? warna = null,
  }) {
    return _then(_value.copyWith(
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      gambar: null == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      warna: null == warna
          ? _value.warna
          : warna // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingResCopyWith<$Res>
    implements $OnboardingResCopyWith<$Res> {
  factory _$$_OnboardingResCopyWith(
          _$_OnboardingRes value, $Res Function(_$_OnboardingRes) then) =
      __$$_OnboardingResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'judul', defaultValue: '') String judul,
      @JsonKey(name: 'gambar', defaultValue: '') String gambar,
      @JsonKey(name: 'keterangan', defaultValue: '') String keterangan,
      @JsonKey(name: 'warna', defaultValue: '') String warna});
}

/// @nodoc
class __$$_OnboardingResCopyWithImpl<$Res>
    extends _$OnboardingResCopyWithImpl<$Res, _$_OnboardingRes>
    implements _$$_OnboardingResCopyWith<$Res> {
  __$$_OnboardingResCopyWithImpl(
      _$_OnboardingRes _value, $Res Function(_$_OnboardingRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = null,
    Object? gambar = null,
    Object? keterangan = null,
    Object? warna = null,
  }) {
    return _then(_$_OnboardingRes(
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      gambar: null == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String,
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      warna: null == warna
          ? _value.warna
          : warna // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_OnboardingRes extends _OnboardingRes {
  const _$_OnboardingRes(
      {@JsonKey(name: 'judul', defaultValue: '') required this.judul,
      @JsonKey(name: 'gambar', defaultValue: '') required this.gambar,
      @JsonKey(name: 'keterangan', defaultValue: '') required this.keterangan,
      @JsonKey(name: 'warna', defaultValue: '') required this.warna})
      : super._();

  factory _$_OnboardingRes.fromJson(Map<String, dynamic> json) =>
      _$$_OnboardingResFromJson(json);

  @override
  @JsonKey(name: 'judul', defaultValue: '')
  final String judul;
  @override
  @JsonKey(name: 'gambar', defaultValue: '')
  final String gambar;
  @override
  @JsonKey(name: 'keterangan', defaultValue: '')
  final String keterangan;
  @override
  @JsonKey(name: 'warna', defaultValue: '')
  final String warna;

  @override
  String toString() {
    return 'OnboardingRes(judul: $judul, gambar: $gambar, keterangan: $keterangan, warna: $warna)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingRes &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.gambar, gambar) || other.gambar == gambar) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.warna, warna) || other.warna == warna));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, judul, gambar, keterangan, warna);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingResCopyWith<_$_OnboardingRes> get copyWith =>
      __$$_OnboardingResCopyWithImpl<_$_OnboardingRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnboardingResToJson(
      this,
    );
  }
}

abstract class _OnboardingRes extends OnboardingRes {
  const factory _OnboardingRes(
      {@JsonKey(name: 'judul', defaultValue: '') required final String judul,
      @JsonKey(name: 'gambar', defaultValue: '') required final String gambar,
      @JsonKey(name: 'keterangan', defaultValue: '')
      required final String keterangan,
      @JsonKey(name: 'warna', defaultValue: '')
      required final String warna}) = _$_OnboardingRes;
  const _OnboardingRes._() : super._();

  factory _OnboardingRes.fromJson(Map<String, dynamic> json) =
      _$_OnboardingRes.fromJson;

  @override
  @JsonKey(name: 'judul', defaultValue: '')
  String get judul;
  @override
  @JsonKey(name: 'gambar', defaultValue: '')
  String get gambar;
  @override
  @JsonKey(name: 'keterangan', defaultValue: '')
  String get keterangan;
  @override
  @JsonKey(name: 'warna', defaultValue: '')
  String get warna;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingResCopyWith<_$_OnboardingRes> get copyWith =>
      throw _privateConstructorUsedError;
}
