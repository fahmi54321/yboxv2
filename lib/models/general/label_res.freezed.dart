// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LabelRes _$LabelResFromJson(Map<String, dynamic> json) {
  return _LabelRes.fromJson(json);
}

/// @nodoc
mixin _$LabelRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama', defaultValue: '')
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'label', defaultValue: 0)
  int get labelCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelResCopyWith<LabelRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelResCopyWith<$Res> {
  factory $LabelResCopyWith(LabelRes value, $Res Function(LabelRes) then) =
      _$LabelResCopyWithImpl<$Res, LabelRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'nama', defaultValue: '') String nama,
      @JsonKey(name: 'label', defaultValue: 0) int labelCode});
}

/// @nodoc
class _$LabelResCopyWithImpl<$Res, $Val extends LabelRes>
    implements $LabelResCopyWith<$Res> {
  _$LabelResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? labelCode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      labelCode: null == labelCode
          ? _value.labelCode
          : labelCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LabelResCopyWith<$Res> implements $LabelResCopyWith<$Res> {
  factory _$$_LabelResCopyWith(
          _$_LabelRes value, $Res Function(_$_LabelRes) then) =
      __$$_LabelResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'nama', defaultValue: '') String nama,
      @JsonKey(name: 'label', defaultValue: 0) int labelCode});
}

/// @nodoc
class __$$_LabelResCopyWithImpl<$Res>
    extends _$LabelResCopyWithImpl<$Res, _$_LabelRes>
    implements _$$_LabelResCopyWith<$Res> {
  __$$_LabelResCopyWithImpl(
      _$_LabelRes _value, $Res Function(_$_LabelRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? labelCode = null,
  }) {
    return _then(_$_LabelRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      labelCode: null == labelCode
          ? _value.labelCode
          : labelCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_LabelRes extends _LabelRes {
  const _$_LabelRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'nama', defaultValue: '') required this.nama,
      @JsonKey(name: 'label', defaultValue: 0) required this.labelCode})
      : super._();

  factory _$_LabelRes.fromJson(Map<String, dynamic> json) =>
      _$$_LabelResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'nama', defaultValue: '')
  final String nama;
  @override
  @JsonKey(name: 'label', defaultValue: 0)
  final int labelCode;

  @override
  String toString() {
    return 'LabelRes(id: $id, nama: $nama, labelCode: $labelCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LabelRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.labelCode, labelCode) ||
                other.labelCode == labelCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, labelCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LabelResCopyWith<_$_LabelRes> get copyWith =>
      __$$_LabelResCopyWithImpl<_$_LabelRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelResToJson(
      this,
    );
  }
}

abstract class _LabelRes extends LabelRes {
  const factory _LabelRes(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'nama', defaultValue: '') required final String nama,
      @JsonKey(name: 'label', defaultValue: 0)
      required final int labelCode}) = _$_LabelRes;
  const _LabelRes._() : super._();

  factory _LabelRes.fromJson(Map<String, dynamic> json) = _$_LabelRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'nama', defaultValue: '')
  String get nama;
  @override
  @JsonKey(name: 'label', defaultValue: 0)
  int get labelCode;
  @override
  @JsonKey(ignore: true)
  _$$_LabelResCopyWith<_$_LabelRes> get copyWith =>
      throw _privateConstructorUsedError;
}
