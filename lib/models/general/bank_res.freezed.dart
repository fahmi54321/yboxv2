// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankRes _$BankResFromJson(Map<String, dynamic> json) {
  return _BankRes.fromJson(json);
}

/// @nodoc
mixin _$BankRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankResCopyWith<BankRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankResCopyWith<$Res> {
  factory $BankResCopyWith(BankRes value, $Res Function(BankRes) then) =
      _$BankResCopyWithImpl<$Res, BankRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$BankResCopyWithImpl<$Res, $Val extends BankRes>
    implements $BankResCopyWith<$Res> {
  _$BankResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankResCopyWith<$Res> implements $BankResCopyWith<$Res> {
  factory _$$_BankResCopyWith(
          _$_BankRes value, $Res Function(_$_BankRes) then) =
      __$$_BankResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$$_BankResCopyWithImpl<$Res>
    extends _$BankResCopyWithImpl<$Res, _$_BankRes>
    implements _$$_BankResCopyWith<$Res> {
  __$$_BankResCopyWithImpl(_$_BankRes _value, $Res Function(_$_BankRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_BankRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_BankRes extends _BankRes {
  const _$_BankRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_BankRes.fromJson(Map<String, dynamic> json) =>
      _$$_BankResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'BankRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankResCopyWith<_$_BankRes> get copyWith =>
      __$$_BankResCopyWithImpl<_$_BankRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankResToJson(
      this,
    );
  }
}

abstract class _BankRes extends BankRes {
  const factory _BankRes(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '')
      required final String name}) = _$_BankRes;
  const _BankRes._() : super._();

  factory _BankRes.fromJson(Map<String, dynamic> json) = _$_BankRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_BankResCopyWith<_$_BankRes> get copyWith =>
      throw _privateConstructorUsedError;
}
