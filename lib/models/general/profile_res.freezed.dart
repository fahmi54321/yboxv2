// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileRes _$ProfileResFromJson(Map<String, dynamic> json) {
  return _ProfileRes.fromJson(json);
}

/// @nodoc
mixin _$ProfileRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name', defaultValue: '')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name', defaultValue: '')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_id', defaultValue: 0)
  int get levelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username', defaultValue: '')
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResCopyWith<ProfileRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResCopyWith<$Res> {
  factory $ProfileResCopyWith(
          ProfileRes value, $Res Function(ProfileRes) then) =
      _$ProfileResCopyWithImpl<$Res, ProfileRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'first_name', defaultValue: '') String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') String lastName,
      @JsonKey(name: 'level_id', defaultValue: 0) int levelId,
      @JsonKey(name: 'username', defaultValue: '') String username});
}

/// @nodoc
class _$ProfileResCopyWithImpl<$Res, $Val extends ProfileRes>
    implements $ProfileResCopyWith<$Res> {
  _$ProfileResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? levelId = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileResCopyWith<$Res>
    implements $ProfileResCopyWith<$Res> {
  factory _$$_ProfileResCopyWith(
          _$_ProfileRes value, $Res Function(_$_ProfileRes) then) =
      __$$_ProfileResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'first_name', defaultValue: '') String firstName,
      @JsonKey(name: 'last_name', defaultValue: '') String lastName,
      @JsonKey(name: 'level_id', defaultValue: 0) int levelId,
      @JsonKey(name: 'username', defaultValue: '') String username});
}

/// @nodoc
class __$$_ProfileResCopyWithImpl<$Res>
    extends _$ProfileResCopyWithImpl<$Res, _$_ProfileRes>
    implements _$$_ProfileResCopyWith<$Res> {
  __$$_ProfileResCopyWithImpl(
      _$_ProfileRes _value, $Res Function(_$_ProfileRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? levelId = null,
    Object? username = null,
  }) {
    return _then(_$_ProfileRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_ProfileRes extends _ProfileRes {
  const _$_ProfileRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'image', defaultValue: '') required this.image,
      @JsonKey(name: 'first_name', defaultValue: '') required this.firstName,
      @JsonKey(name: 'last_name', defaultValue: '') required this.lastName,
      @JsonKey(name: 'level_id', defaultValue: 0) required this.levelId,
      @JsonKey(name: 'username', defaultValue: '') required this.username})
      : super._();

  factory _$_ProfileRes.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  final String firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  final String lastName;
  @override
  @JsonKey(name: 'level_id', defaultValue: 0)
  final int levelId;
  @override
  @JsonKey(name: 'username', defaultValue: '')
  final String username;

  @override
  String toString() {
    return 'ProfileRes(id: $id, image: $image, firstName: $firstName, lastName: $lastName, levelId: $levelId, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, image, firstName, lastName, levelId, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileResCopyWith<_$_ProfileRes> get copyWith =>
      __$$_ProfileResCopyWithImpl<_$_ProfileRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileResToJson(
      this,
    );
  }
}

abstract class _ProfileRes extends ProfileRes {
  const factory _ProfileRes(
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'image', defaultValue: '') required final String image,
      @JsonKey(name: 'first_name', defaultValue: '')
      required final String firstName,
      @JsonKey(name: 'last_name', defaultValue: '')
      required final String lastName,
      @JsonKey(name: 'level_id', defaultValue: 0) required final int levelId,
      @JsonKey(name: 'username', defaultValue: '')
      required final String username}) = _$_ProfileRes;
  const _ProfileRes._() : super._();

  factory _ProfileRes.fromJson(Map<String, dynamic> json) =
      _$_ProfileRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'first_name', defaultValue: '')
  String get firstName;
  @override
  @JsonKey(name: 'last_name', defaultValue: '')
  String get lastName;
  @override
  @JsonKey(name: 'level_id', defaultValue: 0)
  int get levelId;
  @override
  @JsonKey(name: 'username', defaultValue: '')
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileResCopyWith<_$_ProfileRes> get copyWith =>
      throw _privateConstructorUsedError;
}
