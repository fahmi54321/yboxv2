// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constributor_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConstributorRes _$ConstributorResFromJson(Map<String, dynamic> json) {
  return _ConstributorRes.fromJson(json);
}

/// @nodoc
mixin _$ConstributorRes {
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_id', defaultValue: 0)
  int get roleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'share', defaultValue: 0)
  int get share => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishing_id', defaultValue: 0)
  int get publishingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'role_track')
  RolesRes? get roleTrack => throw _privateConstructorUsedError;
  @JsonKey(name: 'publising')
  PublishingRes? get publising => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstributorResCopyWith<ConstributorRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstributorResCopyWith<$Res> {
  factory $ConstributorResCopyWith(
          ConstributorRes value, $Res Function(ConstributorRes) then) =
      _$ConstributorResCopyWithImpl<$Res, ConstributorRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'role_id', defaultValue: 0) int roleId,
      @JsonKey(name: 'share', defaultValue: 0) int share,
      @JsonKey(name: 'publishing_id', defaultValue: 0) int publishingId,
      @JsonKey(name: 'role_track') RolesRes? roleTrack,
      @JsonKey(name: 'publising') PublishingRes? publising});

  $RolesResCopyWith<$Res>? get roleTrack;
  $PublishingResCopyWith<$Res>? get publising;
}

/// @nodoc
class _$ConstributorResCopyWithImpl<$Res, $Val extends ConstributorRes>
    implements $ConstributorResCopyWith<$Res> {
  _$ConstributorResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? roleId = null,
    Object? share = null,
    Object? publishingId = null,
    Object? roleTrack = freezed,
    Object? publising = freezed,
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
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int,
      publishingId: null == publishingId
          ? _value.publishingId
          : publishingId // ignore: cast_nullable_to_non_nullable
              as int,
      roleTrack: freezed == roleTrack
          ? _value.roleTrack
          : roleTrack // ignore: cast_nullable_to_non_nullable
              as RolesRes?,
      publising: freezed == publising
          ? _value.publising
          : publising // ignore: cast_nullable_to_non_nullable
              as PublishingRes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RolesResCopyWith<$Res>? get roleTrack {
    if (_value.roleTrack == null) {
      return null;
    }

    return $RolesResCopyWith<$Res>(_value.roleTrack!, (value) {
      return _then(_value.copyWith(roleTrack: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PublishingResCopyWith<$Res>? get publising {
    if (_value.publising == null) {
      return null;
    }

    return $PublishingResCopyWith<$Res>(_value.publising!, (value) {
      return _then(_value.copyWith(publising: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConstributorResCopyWith<$Res>
    implements $ConstributorResCopyWith<$Res> {
  factory _$$_ConstributorResCopyWith(
          _$_ConstributorRes value, $Res Function(_$_ConstributorRes) then) =
      __$$_ConstributorResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'role_id', defaultValue: 0) int roleId,
      @JsonKey(name: 'share', defaultValue: 0) int share,
      @JsonKey(name: 'publishing_id', defaultValue: 0) int publishingId,
      @JsonKey(name: 'role_track') RolesRes? roleTrack,
      @JsonKey(name: 'publising') PublishingRes? publising});

  @override
  $RolesResCopyWith<$Res>? get roleTrack;
  @override
  $PublishingResCopyWith<$Res>? get publising;
}

/// @nodoc
class __$$_ConstributorResCopyWithImpl<$Res>
    extends _$ConstributorResCopyWithImpl<$Res, _$_ConstributorRes>
    implements _$$_ConstributorResCopyWith<$Res> {
  __$$_ConstributorResCopyWithImpl(
      _$_ConstributorRes _value, $Res Function(_$_ConstributorRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? roleId = null,
    Object? share = null,
    Object? publishingId = null,
    Object? roleTrack = freezed,
    Object? publising = freezed,
  }) {
    return _then(_$_ConstributorRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as int,
      publishingId: null == publishingId
          ? _value.publishingId
          : publishingId // ignore: cast_nullable_to_non_nullable
              as int,
      roleTrack: freezed == roleTrack
          ? _value.roleTrack
          : roleTrack // ignore: cast_nullable_to_non_nullable
              as RolesRes?,
      publising: freezed == publising
          ? _value.publising
          : publising // ignore: cast_nullable_to_non_nullable
              as PublishingRes?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_ConstributorRes extends _ConstributorRes {
  const _$_ConstributorRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'role_id', defaultValue: 0) required this.roleId,
      @JsonKey(name: 'share', defaultValue: 0) required this.share,
      @JsonKey(name: 'publishing_id', defaultValue: 0)
      required this.publishingId,
      @JsonKey(name: 'role_track') this.roleTrack,
      @JsonKey(name: 'publising') this.publising})
      : super._();

  factory _$_ConstributorRes.fromJson(Map<String, dynamic> json) =>
      _$$_ConstributorResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'role_id', defaultValue: 0)
  final int roleId;
  @override
  @JsonKey(name: 'share', defaultValue: 0)
  final int share;
  @override
  @JsonKey(name: 'publishing_id', defaultValue: 0)
  final int publishingId;
  @override
  @JsonKey(name: 'role_track')
  final RolesRes? roleTrack;
  @override
  @JsonKey(name: 'publising')
  final PublishingRes? publising;

  @override
  String toString() {
    return 'ConstributorRes(id: $id, name: $name, roleId: $roleId, share: $share, publishingId: $publishingId, roleTrack: $roleTrack, publising: $publising)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConstributorRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.share, share) || other.share == share) &&
            (identical(other.publishingId, publishingId) ||
                other.publishingId == publishingId) &&
            (identical(other.roleTrack, roleTrack) ||
                other.roleTrack == roleTrack) &&
            (identical(other.publising, publising) ||
                other.publising == publising));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, roleId, share, publishingId, roleTrack, publising);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConstributorResCopyWith<_$_ConstributorRes> get copyWith =>
      __$$_ConstributorResCopyWithImpl<_$_ConstributorRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConstributorResToJson(
      this,
    );
  }
}

abstract class _ConstributorRes extends ConstributorRes {
  const factory _ConstributorRes(
          {@JsonKey(name: 'id', defaultValue: 0) required final int id,
          @JsonKey(name: 'name', defaultValue: '') required final String name,
          @JsonKey(name: 'role_id', defaultValue: 0) required final int roleId,
          @JsonKey(name: 'share', defaultValue: 0) required final int share,
          @JsonKey(name: 'publishing_id', defaultValue: 0)
          required final int publishingId,
          @JsonKey(name: 'role_track') final RolesRes? roleTrack,
          @JsonKey(name: 'publising') final PublishingRes? publising}) =
      _$_ConstributorRes;
  const _ConstributorRes._() : super._();

  factory _ConstributorRes.fromJson(Map<String, dynamic> json) =
      _$_ConstributorRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'role_id', defaultValue: 0)
  int get roleId;
  @override
  @JsonKey(name: 'share', defaultValue: 0)
  int get share;
  @override
  @JsonKey(name: 'publishing_id', defaultValue: 0)
  int get publishingId;
  @override
  @JsonKey(name: 'role_track')
  RolesRes? get roleTrack;
  @override
  @JsonKey(name: 'publising')
  PublishingRes? get publising;
  @override
  @JsonKey(ignore: true)
  _$$_ConstributorResCopyWith<_$_ConstributorRes> get copyWith =>
      throw _privateConstructorUsedError;
}
