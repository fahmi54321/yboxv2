// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leader_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeaderRes _$LeaderResFromJson(Map<String, dynamic> json) {
  return _LeaderRes.fromJson(json);
}

/// @nodoc
mixin _$LeaderRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderResCopyWith<LeaderRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderResCopyWith<$Res> {
  factory $LeaderResCopyWith(LeaderRes value, $Res Function(LeaderRes) then) =
      _$LeaderResCopyWithImpl<$Res, LeaderRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'image', defaultValue: '') String image});
}

/// @nodoc
class _$LeaderResCopyWithImpl<$Res, $Val extends LeaderRes>
    implements $LeaderResCopyWith<$Res> {
  _$LeaderResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeaderResCopyWith<$Res> implements $LeaderResCopyWith<$Res> {
  factory _$$_LeaderResCopyWith(
          _$_LeaderRes value, $Res Function(_$_LeaderRes) then) =
      __$$_LeaderResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'image', defaultValue: '') String image});
}

/// @nodoc
class __$$_LeaderResCopyWithImpl<$Res>
    extends _$LeaderResCopyWithImpl<$Res, _$_LeaderRes>
    implements _$$_LeaderResCopyWith<$Res> {
  __$$_LeaderResCopyWithImpl(
      _$_LeaderRes _value, $Res Function(_$_LeaderRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$_LeaderRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_LeaderRes extends _LeaderRes {
  const _$_LeaderRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'image', defaultValue: '') required this.image})
      : super._();

  factory _$_LeaderRes.fromJson(Map<String, dynamic> json) =>
      _$$_LeaderResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;

  @override
  String toString() {
    return 'LeaderRes(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaderRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeaderResCopyWith<_$_LeaderRes> get copyWith =>
      __$$_LeaderResCopyWithImpl<_$_LeaderRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaderResToJson(
      this,
    );
  }
}

abstract class _LeaderRes extends LeaderRes {
  const factory _LeaderRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'image', defaultValue: '')
      required final String image}) = _$_LeaderRes;
  const _LeaderRes._() : super._();

  factory _LeaderRes.fromJson(Map<String, dynamic> json) =
      _$_LeaderRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_LeaderResCopyWith<_$_LeaderRes> get copyWith =>
      throw _privateConstructorUsedError;
}
