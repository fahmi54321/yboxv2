// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publisher_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublisherRes _$PublisherResFromJson(Map<String, dynamic> json) {
  return _PublisherRes.fromJson(json);
}

/// @nodoc
mixin _$PublisherRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublisherResCopyWith<PublisherRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherResCopyWith<$Res> {
  factory $PublisherResCopyWith(
          PublisherRes value, $Res Function(PublisherRes) then) =
      _$PublisherResCopyWithImpl<$Res, PublisherRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class _$PublisherResCopyWithImpl<$Res, $Val extends PublisherRes>
    implements $PublisherResCopyWith<$Res> {
  _$PublisherResCopyWithImpl(this._value, this._then);

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
abstract class _$$_PublisherResCopyWith<$Res>
    implements $PublisherResCopyWith<$Res> {
  factory _$$_PublisherResCopyWith(
          _$_PublisherRes value, $Res Function(_$_PublisherRes) then) =
      __$$_PublisherResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name});
}

/// @nodoc
class __$$_PublisherResCopyWithImpl<$Res>
    extends _$PublisherResCopyWithImpl<$Res, _$_PublisherRes>
    implements _$$_PublisherResCopyWith<$Res> {
  __$$_PublisherResCopyWithImpl(
      _$_PublisherRes _value, $Res Function(_$_PublisherRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_PublisherRes(
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
class _$_PublisherRes extends _PublisherRes {
  const _$_PublisherRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name})
      : super._();

  factory _$_PublisherRes.fromJson(Map<String, dynamic> json) =>
      _$$_PublisherResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'PublisherRes(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublisherRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublisherResCopyWith<_$_PublisherRes> get copyWith =>
      __$$_PublisherResCopyWithImpl<_$_PublisherRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublisherResToJson(
      this,
    );
  }
}

abstract class _PublisherRes extends PublisherRes {
  const factory _PublisherRes(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'name', defaultValue: '')
      required final String name}) = _$_PublisherRes;
  const _PublisherRes._() : super._();

  factory _PublisherRes.fromJson(Map<String, dynamic> json) =
      _$_PublisherRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PublisherResCopyWith<_$_PublisherRes> get copyWith =>
      throw _privateConstructorUsedError;
}
