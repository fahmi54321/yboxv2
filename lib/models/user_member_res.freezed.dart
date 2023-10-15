// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_member_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserMemberRes _$UserMemberResFromJson(Map<String, dynamic> json) {
  return _UserMemberRes.fromJson(json);
}

/// @nodoc
mixin _$UserMemberRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid_msg', defaultValue: '')
  String get uuidMsg => throw _privateConstructorUsedError;
  @JsonKey(name: 'user', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_msg_notif')
  String? get tokenMsgNotif => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMemberResCopyWith<UserMemberRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMemberResCopyWith<$Res> {
  factory $UserMemberResCopyWith(
          UserMemberRes value, $Res Function(UserMemberRes) then) =
      _$UserMemberResCopyWithImpl<$Res, UserMemberRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'uuid_msg', defaultValue: '') String uuidMsg,
      @JsonKey(name: 'user', defaultValue: '') String name,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'token_msg_notif') String? tokenMsgNotif});
}

/// @nodoc
class _$UserMemberResCopyWithImpl<$Res, $Val extends UserMemberRes>
    implements $UserMemberResCopyWith<$Res> {
  _$UserMemberResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuidMsg = null,
    Object? name = null,
    Object? image = null,
    Object? tokenMsgNotif = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuidMsg: null == uuidMsg
          ? _value.uuidMsg
          : uuidMsg // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      tokenMsgNotif: freezed == tokenMsgNotif
          ? _value.tokenMsgNotif
          : tokenMsgNotif // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserMemberResCopyWith<$Res>
    implements $UserMemberResCopyWith<$Res> {
  factory _$$_UserMemberResCopyWith(
          _$_UserMemberRes value, $Res Function(_$_UserMemberRes) then) =
      __$$_UserMemberResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'uuid_msg', defaultValue: '') String uuidMsg,
      @JsonKey(name: 'user', defaultValue: '') String name,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'token_msg_notif') String? tokenMsgNotif});
}

/// @nodoc
class __$$_UserMemberResCopyWithImpl<$Res>
    extends _$UserMemberResCopyWithImpl<$Res, _$_UserMemberRes>
    implements _$$_UserMemberResCopyWith<$Res> {
  __$$_UserMemberResCopyWithImpl(
      _$_UserMemberRes _value, $Res Function(_$_UserMemberRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuidMsg = null,
    Object? name = null,
    Object? image = null,
    Object? tokenMsgNotif = freezed,
  }) {
    return _then(_$_UserMemberRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuidMsg: null == uuidMsg
          ? _value.uuidMsg
          : uuidMsg // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      tokenMsgNotif: freezed == tokenMsgNotif
          ? _value.tokenMsgNotif
          : tokenMsgNotif // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_UserMemberRes extends _UserMemberRes {
  const _$_UserMemberRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'uuid_msg', defaultValue: '') required this.uuidMsg,
      @JsonKey(name: 'user', defaultValue: '') required this.name,
      @JsonKey(name: 'image', defaultValue: '') required this.image,
      @JsonKey(name: 'token_msg_notif') this.tokenMsgNotif})
      : super._();

  factory _$_UserMemberRes.fromJson(Map<String, dynamic> json) =>
      _$$_UserMemberResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'uuid_msg', defaultValue: '')
  final String uuidMsg;
  @override
  @JsonKey(name: 'user', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'token_msg_notif')
  final String? tokenMsgNotif;

  @override
  String toString() {
    return 'UserMemberRes(id: $id, uuidMsg: $uuidMsg, name: $name, image: $image, tokenMsgNotif: $tokenMsgNotif)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserMemberRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuidMsg, uuidMsg) || other.uuidMsg == uuidMsg) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.tokenMsgNotif, tokenMsgNotif) ||
                other.tokenMsgNotif == tokenMsgNotif));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, uuidMsg, name, image, tokenMsgNotif);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserMemberResCopyWith<_$_UserMemberRes> get copyWith =>
      __$$_UserMemberResCopyWithImpl<_$_UserMemberRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserMemberResToJson(
      this,
    );
  }
}

abstract class _UserMemberRes extends UserMemberRes {
  const factory _UserMemberRes(
          {@JsonKey(name: 'id', defaultValue: '') required final String id,
          @JsonKey(name: 'uuid_msg', defaultValue: '')
          required final String uuidMsg,
          @JsonKey(name: 'user', defaultValue: '') required final String name,
          @JsonKey(name: 'image', defaultValue: '') required final String image,
          @JsonKey(name: 'token_msg_notif') final String? tokenMsgNotif}) =
      _$_UserMemberRes;
  const _UserMemberRes._() : super._();

  factory _UserMemberRes.fromJson(Map<String, dynamic> json) =
      _$_UserMemberRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'uuid_msg', defaultValue: '')
  String get uuidMsg;
  @override
  @JsonKey(name: 'user', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'token_msg_notif')
  String? get tokenMsgNotif;
  @override
  @JsonKey(ignore: true)
  _$$_UserMemberResCopyWith<_$_UserMemberRes> get copyWith =>
      throw _privateConstructorUsedError;
}
