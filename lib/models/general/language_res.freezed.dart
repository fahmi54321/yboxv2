// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageRes _$LanguageResFromJson(Map<String, dynamic> json) {
  return _LanguageRes.fromJson(json);
}

/// @nodoc
mixin _$LanguageRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageResCopyWith<LanguageRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageResCopyWith<$Res> {
  factory $LanguageResCopyWith(
          LanguageRes value, $Res Function(LanguageRes) then) =
      _$LanguageResCopyWithImpl<$Res, LanguageRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$LanguageResCopyWithImpl<$Res, $Val extends LanguageRes>
    implements $LanguageResCopyWith<$Res> {
  _$LanguageResCopyWithImpl(this._value, this._then);

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
abstract class _$$_LanguageResCopyWith<$Res>
    implements $LanguageResCopyWith<$Res> {
  factory _$$_LanguageResCopyWith(
          _$_LanguageRes value, $Res Function(_$_LanguageRes) then) =
      __$$_LanguageResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$$_LanguageResCopyWithImpl<$Res>
    extends _$LanguageResCopyWithImpl<$Res, _$_LanguageRes>
    implements _$$_LanguageResCopyWith<$Res> {
  __$$_LanguageResCopyWithImpl(
      _$_LanguageRes _value, $Res Function(_$_LanguageRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_LanguageRes(
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
class _$_LanguageRes extends _LanguageRes {
  const _$_LanguageRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_LanguageRes.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'LanguageRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageResCopyWith<_$_LanguageRes> get copyWith =>
      __$$_LanguageResCopyWithImpl<_$_LanguageRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageResToJson(
      this,
    );
  }
}

abstract class _LanguageRes extends LanguageRes {
  const factory _LanguageRes(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '')
      required final String name}) = _$_LanguageRes;
  const _LanguageRes._() : super._();

  factory _LanguageRes.fromJson(Map<String, dynamic> json) =
      _$_LanguageRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageResCopyWith<_$_LanguageRes> get copyWith =>
      throw _privateConstructorUsedError;
}
