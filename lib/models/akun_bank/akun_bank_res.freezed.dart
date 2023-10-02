// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'akun_bank_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataBankRes _$DataBankResFromJson(Map<String, dynamic> json) {
  return _DataBankRes.fromJson(json);
}

/// @nodoc
mixin _$DataBankRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_akun', defaultValue: '')
  String get namaAkun => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_rek', defaultValue: '')
  String get noRek => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_dalam_rekening', defaultValue: '')
  String get namaDalamRekening => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank')
  BankRes? get bank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBankResCopyWith<DataBankRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBankResCopyWith<$Res> {
  factory $DataBankResCopyWith(
          DataBankRes value, $Res Function(DataBankRes) then) =
      _$DataBankResCopyWithImpl<$Res, DataBankRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'nama_akun', defaultValue: '') String namaAkun,
      @JsonKey(name: 'no_rek', defaultValue: '') String noRek,
      @JsonKey(name: 'nama_dalam_rekening', defaultValue: '')
      String namaDalamRekening,
      @JsonKey(name: 'bank') BankRes? bank});

  $BankResCopyWith<$Res>? get bank;
}

/// @nodoc
class _$DataBankResCopyWithImpl<$Res, $Val extends DataBankRes>
    implements $DataBankResCopyWith<$Res> {
  _$DataBankResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaAkun = null,
    Object? noRek = null,
    Object? namaDalamRekening = null,
    Object? bank = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namaAkun: null == namaAkun
          ? _value.namaAkun
          : namaAkun // ignore: cast_nullable_to_non_nullable
              as String,
      noRek: null == noRek
          ? _value.noRek
          : noRek // ignore: cast_nullable_to_non_nullable
              as String,
      namaDalamRekening: null == namaDalamRekening
          ? _value.namaDalamRekening
          : namaDalamRekening // ignore: cast_nullable_to_non_nullable
              as String,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankRes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BankResCopyWith<$Res>? get bank {
    if (_value.bank == null) {
      return null;
    }

    return $BankResCopyWith<$Res>(_value.bank!, (value) {
      return _then(_value.copyWith(bank: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataBankResCopyWith<$Res>
    implements $DataBankResCopyWith<$Res> {
  factory _$$_DataBankResCopyWith(
          _$_DataBankRes value, $Res Function(_$_DataBankRes) then) =
      __$$_DataBankResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'nama_akun', defaultValue: '') String namaAkun,
      @JsonKey(name: 'no_rek', defaultValue: '') String noRek,
      @JsonKey(name: 'nama_dalam_rekening', defaultValue: '')
      String namaDalamRekening,
      @JsonKey(name: 'bank') BankRes? bank});

  @override
  $BankResCopyWith<$Res>? get bank;
}

/// @nodoc
class __$$_DataBankResCopyWithImpl<$Res>
    extends _$DataBankResCopyWithImpl<$Res, _$_DataBankRes>
    implements _$$_DataBankResCopyWith<$Res> {
  __$$_DataBankResCopyWithImpl(
      _$_DataBankRes _value, $Res Function(_$_DataBankRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? namaAkun = null,
    Object? noRek = null,
    Object? namaDalamRekening = null,
    Object? bank = freezed,
  }) {
    return _then(_$_DataBankRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      namaAkun: null == namaAkun
          ? _value.namaAkun
          : namaAkun // ignore: cast_nullable_to_non_nullable
              as String,
      noRek: null == noRek
          ? _value.noRek
          : noRek // ignore: cast_nullable_to_non_nullable
              as String,
      namaDalamRekening: null == namaDalamRekening
          ? _value.namaDalamRekening
          : namaDalamRekening // ignore: cast_nullable_to_non_nullable
              as String,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as BankRes?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataBankRes extends _DataBankRes {
  const _$_DataBankRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'nama_akun', defaultValue: '') required this.namaAkun,
      @JsonKey(name: 'no_rek', defaultValue: '') required this.noRek,
      @JsonKey(name: 'nama_dalam_rekening', defaultValue: '')
      required this.namaDalamRekening,
      @JsonKey(name: 'bank') this.bank})
      : super._();

  factory _$_DataBankRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataBankResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'nama_akun', defaultValue: '')
  final String namaAkun;
  @override
  @JsonKey(name: 'no_rek', defaultValue: '')
  final String noRek;
  @override
  @JsonKey(name: 'nama_dalam_rekening', defaultValue: '')
  final String namaDalamRekening;
  @override
  @JsonKey(name: 'bank')
  final BankRes? bank;

  @override
  String toString() {
    return 'DataBankRes(id: $id, namaAkun: $namaAkun, noRek: $noRek, namaDalamRekening: $namaDalamRekening, bank: $bank)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataBankRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaAkun, namaAkun) ||
                other.namaAkun == namaAkun) &&
            (identical(other.noRek, noRek) || other.noRek == noRek) &&
            (identical(other.namaDalamRekening, namaDalamRekening) ||
                other.namaDalamRekening == namaDalamRekening) &&
            (identical(other.bank, bank) || other.bank == bank));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, namaAkun, noRek, namaDalamRekening, bank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataBankResCopyWith<_$_DataBankRes> get copyWith =>
      __$$_DataBankResCopyWithImpl<_$_DataBankRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataBankResToJson(
      this,
    );
  }
}

abstract class _DataBankRes extends DataBankRes {
  const factory _DataBankRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'nama_akun', defaultValue: '')
      required final String namaAkun,
      @JsonKey(name: 'no_rek', defaultValue: '') required final String noRek,
      @JsonKey(name: 'nama_dalam_rekening', defaultValue: '')
      required final String namaDalamRekening,
      @JsonKey(name: 'bank') final BankRes? bank}) = _$_DataBankRes;
  const _DataBankRes._() : super._();

  factory _DataBankRes.fromJson(Map<String, dynamic> json) =
      _$_DataBankRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'nama_akun', defaultValue: '')
  String get namaAkun;
  @override
  @JsonKey(name: 'no_rek', defaultValue: '')
  String get noRek;
  @override
  @JsonKey(name: 'nama_dalam_rekening', defaultValue: '')
  String get namaDalamRekening;
  @override
  @JsonKey(name: 'bank')
  BankRes? get bank;
  @override
  @JsonKey(ignore: true)
  _$$_DataBankResCopyWith<_$_DataBankRes> get copyWith =>
      throw _privateConstructorUsedError;
}
