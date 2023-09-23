// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roles_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RolesRes _$RolesResFromJson(Map<String, dynamic> json) {
  return _RolesRes.fromJson(json);
}

/// @nodoc
mixin _$RolesRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RolesResCopyWith<RolesRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RolesResCopyWith<$Res> {
  factory $RolesResCopyWith(RolesRes value, $Res Function(RolesRes) then) =
      _$RolesResCopyWithImpl<$Res, RolesRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$RolesResCopyWithImpl<$Res, $Val extends RolesRes>
    implements $RolesResCopyWith<$Res> {
  _$RolesResCopyWithImpl(this._value, this._then);

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
abstract class _$$_RolesResCopyWith<$Res> implements $RolesResCopyWith<$Res> {
  factory _$$_RolesResCopyWith(
          _$_RolesRes value, $Res Function(_$_RolesRes) then) =
      __$$_RolesResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$$_RolesResCopyWithImpl<$Res>
    extends _$RolesResCopyWithImpl<$Res, _$_RolesRes>
    implements _$$_RolesResCopyWith<$Res> {
  __$$_RolesResCopyWithImpl(
      _$_RolesRes _value, $Res Function(_$_RolesRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_RolesRes(
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
class _$_RolesRes extends _RolesRes {
  const _$_RolesRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_RolesRes.fromJson(Map<String, dynamic> json) =>
      _$$_RolesResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'RolesRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RolesRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RolesResCopyWith<_$_RolesRes> get copyWith =>
      __$$_RolesResCopyWithImpl<_$_RolesRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RolesResToJson(
      this,
    );
  }
}

abstract class _RolesRes extends RolesRes {
  const factory _RolesRes(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '')
      required final String name}) = _$_RolesRes;
  const _RolesRes._() : super._();

  factory _RolesRes.fromJson(Map<String, dynamic> json) = _$_RolesRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_RolesResCopyWith<_$_RolesRes> get copyWith =>
      throw _privateConstructorUsedError;
}
