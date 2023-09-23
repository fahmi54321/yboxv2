// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRes _$UserResFromJson(Map<String, dynamic> json) {
  return _UserRes.fromJson(json);
}

/// @nodoc
mixin _$UserRes {
  @JsonKey(name: 'complete_name', defaultValue: '')
  String get completeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email', defaultValue: '')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResCopyWith<UserRes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResCopyWith<$Res> {
  factory $UserResCopyWith(UserRes value, $Res Function(UserRes) then) =
      _$UserResCopyWithImpl<$Res, UserRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'complete_name', defaultValue: '') String completeName,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'image', defaultValue: '') String image});
}

/// @nodoc
class _$UserResCopyWithImpl<$Res, $Val extends UserRes>
    implements $UserResCopyWith<$Res> {
  _$UserResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completeName = null,
    Object? email = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      completeName: null == completeName
          ? _value.completeName
          : completeName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserResCopyWith<$Res> implements $UserResCopyWith<$Res> {
  factory _$$_UserResCopyWith(
          _$_UserRes value, $Res Function(_$_UserRes) then) =
      __$$_UserResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'complete_name', defaultValue: '') String completeName,
      @JsonKey(name: 'email', defaultValue: '') String email,
      @JsonKey(name: 'image', defaultValue: '') String image});
}

/// @nodoc
class __$$_UserResCopyWithImpl<$Res>
    extends _$UserResCopyWithImpl<$Res, _$_UserRes>
    implements _$$_UserResCopyWith<$Res> {
  __$$_UserResCopyWithImpl(_$_UserRes _value, $Res Function(_$_UserRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completeName = null,
    Object? email = null,
    Object? image = null,
  }) {
    return _then(_$_UserRes(
      completeName: null == completeName
          ? _value.completeName
          : completeName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$_UserRes extends _UserRes {
  const _$_UserRes(
      {@JsonKey(name: 'complete_name', defaultValue: '')
      required this.completeName,
      @JsonKey(name: 'email', defaultValue: '') required this.email,
      @JsonKey(name: 'image', defaultValue: '') required this.image})
      : super._();

  factory _$_UserRes.fromJson(Map<String, dynamic> json) =>
      _$$_UserResFromJson(json);

  @override
  @JsonKey(name: 'complete_name', defaultValue: '')
  final String completeName;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;

  @override
  String toString() {
    return 'UserRes(completeName: $completeName, email: $email, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRes &&
            (identical(other.completeName, completeName) ||
                other.completeName == completeName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, completeName, email, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserResCopyWith<_$_UserRes> get copyWith =>
      __$$_UserResCopyWithImpl<_$_UserRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResToJson(
      this,
    );
  }
}

abstract class _UserRes extends UserRes {
  const factory _UserRes(
      {@JsonKey(name: 'complete_name', defaultValue: '')
      required final String completeName,
      @JsonKey(name: 'email', defaultValue: '') required final String email,
      @JsonKey(name: 'image', defaultValue: '')
      required final String image}) = _$_UserRes;
  const _UserRes._() : super._();

  factory _UserRes.fromJson(Map<String, dynamic> json) = _$_UserRes.fromJson;

  @override
  @JsonKey(name: 'complete_name', defaultValue: '')
  String get completeName;
  @override
  @JsonKey(name: 'email', defaultValue: '')
  String get email;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_UserResCopyWith<_$_UserRes> get copyWith =>
      throw _privateConstructorUsedError;
}
