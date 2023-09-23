// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRes _$LoginResFromJson(Map<String, dynamic> json) {
  return _LoginRes.fromJson(json);
}

/// @nodoc
mixin _$LoginRes {
  @JsonKey(name: 'message', defaultValue: '')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token', defaultValue: '')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'level', defaultValue: 0)
  int get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'leader', defaultValue: '')
  String get leader => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResCopyWith<LoginRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResCopyWith<$Res> {
  factory $LoginResCopyWith(LoginRes value, $Res Function(LoginRes) then) =
      _$LoginResCopyWithImpl<$Res, LoginRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message', defaultValue: '') String message,
      @JsonKey(name: 'access_token', defaultValue: '') String accessToken,
      @JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'level', defaultValue: 0) int level,
      @JsonKey(name: 'leader', defaultValue: '') String leader});
}

/// @nodoc
class _$LoginResCopyWithImpl<$Res, $Val extends LoginRes>
    implements $LoginResCopyWith<$Res> {
  _$LoginResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accessToken = null,
    Object? id = null,
    Object? level = null,
    Object? leader = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginResCopyWith<$Res> implements $LoginResCopyWith<$Res> {
  factory _$$_LoginResCopyWith(
          _$_LoginRes value, $Res Function(_$_LoginRes) then) =
      __$$_LoginResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message', defaultValue: '') String message,
      @JsonKey(name: 'access_token', defaultValue: '') String accessToken,
      @JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'level', defaultValue: 0) int level,
      @JsonKey(name: 'leader', defaultValue: '') String leader});
}

/// @nodoc
class __$$_LoginResCopyWithImpl<$Res>
    extends _$LoginResCopyWithImpl<$Res, _$_LoginRes>
    implements _$$_LoginResCopyWith<$Res> {
  __$$_LoginResCopyWithImpl(
      _$_LoginRes _value, $Res Function(_$_LoginRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accessToken = null,
    Object? id = null,
    Object? level = null,
    Object? leader = null,
  }) {
    return _then(_$_LoginRes(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_LoginRes extends _LoginRes {
  const _$_LoginRes(
      {@JsonKey(name: 'message', defaultValue: '') required this.message,
      @JsonKey(name: 'access_token', defaultValue: '')
      required this.accessToken,
      @JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'level', defaultValue: 0) required this.level,
      @JsonKey(name: 'leader', defaultValue: '') required this.leader})
      : super._();

  factory _$_LoginRes.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResFromJson(json);

  @override
  @JsonKey(name: 'message', defaultValue: '')
  final String message;
  @override
  @JsonKey(name: 'access_token', defaultValue: '')
  final String accessToken;
  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'level', defaultValue: 0)
  final int level;
  @override
  @JsonKey(name: 'leader', defaultValue: '')
  final String leader;

  @override
  String toString() {
    return 'LoginRes(message: $message, accessToken: $accessToken, id: $id, level: $level, leader: $leader)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRes &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.leader, leader) || other.leader == leader));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, accessToken, id, level, leader);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResCopyWith<_$_LoginRes> get copyWith =>
      __$$_LoginResCopyWithImpl<_$_LoginRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResToJson(
      this,
    );
  }
}

abstract class _LoginRes extends LoginRes {
  const factory _LoginRes(
      {@JsonKey(name: 'message', defaultValue: '')
      required final String message,
      @JsonKey(name: 'access_token', defaultValue: '')
      required final String accessToken,
      @JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'level', defaultValue: 0) required final int level,
      @JsonKey(name: 'leader', defaultValue: '')
      required final String leader}) = _$_LoginRes;
  const _LoginRes._() : super._();

  factory _LoginRes.fromJson(Map<String, dynamic> json) = _$_LoginRes.fromJson;

  @override
  @JsonKey(name: 'message', defaultValue: '')
  String get message;
  @override
  @JsonKey(name: 'access_token', defaultValue: '')
  String get accessToken;
  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'level', defaultValue: 0)
  int get level;
  @override
  @JsonKey(name: 'leader', defaultValue: '')
  String get leader;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResCopyWith<_$_LoginRes> get copyWith =>
      throw _privateConstructorUsedError;
}
