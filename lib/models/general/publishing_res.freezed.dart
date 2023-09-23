// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publishing_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublishingRes _$PublishingResFromJson(Map<String, dynamic> json) {
  return _PublishingRes.fromJson(json);
}

/// @nodoc
mixin _$PublishingRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublishingResCopyWith<PublishingRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishingResCopyWith<$Res> {
  factory $PublishingResCopyWith(
          PublishingRes value, $Res Function(PublishingRes) then) =
      _$PublishingResCopyWithImpl<$Res, PublishingRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$PublishingResCopyWithImpl<$Res, $Val extends PublishingRes>
    implements $PublishingResCopyWith<$Res> {
  _$PublishingResCopyWithImpl(this._value, this._then);

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
abstract class _$$_PublishingResCopyWith<$Res>
    implements $PublishingResCopyWith<$Res> {
  factory _$$_PublishingResCopyWith(
          _$_PublishingRes value, $Res Function(_$_PublishingRes) then) =
      __$$_PublishingResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$$_PublishingResCopyWithImpl<$Res>
    extends _$PublishingResCopyWithImpl<$Res, _$_PublishingRes>
    implements _$$_PublishingResCopyWith<$Res> {
  __$$_PublishingResCopyWithImpl(
      _$_PublishingRes _value, $Res Function(_$_PublishingRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_PublishingRes(
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
class _$_PublishingRes extends _PublishingRes {
  const _$_PublishingRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_PublishingRes.fromJson(Map<String, dynamic> json) =>
      _$$_PublishingResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'PublishingRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublishingRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublishingResCopyWith<_$_PublishingRes> get copyWith =>
      __$$_PublishingResCopyWithImpl<_$_PublishingRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublishingResToJson(
      this,
    );
  }
}

abstract class _PublishingRes extends PublishingRes {
  const factory _PublishingRes(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '')
      required final String name}) = _$_PublishingRes;
  const _PublishingRes._() : super._();

  factory _PublishingRes.fromJson(Map<String, dynamic> json) =
      _$_PublishingRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PublishingResCopyWith<_$_PublishingRes> get copyWith =>
      throw _privateConstructorUsedError;
}
