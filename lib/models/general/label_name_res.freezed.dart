// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_name_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LabelNameRes _$LabelNameResFromJson(Map<String, dynamic> json) {
  return _LabelNameRes.fromJson(json);
}

/// @nodoc
mixin _$LabelNameRes {
  @JsonKey(name: 'uuid', defaultValue: '')
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete_name', defaultValue: '')
  String get completeName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelNameResCopyWith<LabelNameRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelNameResCopyWith<$Res> {
  factory $LabelNameResCopyWith(
          LabelNameRes value, $Res Function(LabelNameRes) then) =
      _$LabelNameResCopyWithImpl<$Res, LabelNameRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid', defaultValue: '') String uuid,
      @JsonKey(name: 'complete_name', defaultValue: '') String completeName});
}

/// @nodoc
class _$LabelNameResCopyWithImpl<$Res, $Val extends LabelNameRes>
    implements $LabelNameResCopyWith<$Res> {
  _$LabelNameResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? completeName = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      completeName: null == completeName
          ? _value.completeName
          : completeName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LabelNameResCopyWith<$Res>
    implements $LabelNameResCopyWith<$Res> {
  factory _$$_LabelNameResCopyWith(
          _$_LabelNameRes value, $Res Function(_$_LabelNameRes) then) =
      __$$_LabelNameResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid', defaultValue: '') String uuid,
      @JsonKey(name: 'complete_name', defaultValue: '') String completeName});
}

/// @nodoc
class __$$_LabelNameResCopyWithImpl<$Res>
    extends _$LabelNameResCopyWithImpl<$Res, _$_LabelNameRes>
    implements _$$_LabelNameResCopyWith<$Res> {
  __$$_LabelNameResCopyWithImpl(
      _$_LabelNameRes _value, $Res Function(_$_LabelNameRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? completeName = null,
  }) {
    return _then(_$_LabelNameRes(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      completeName: null == completeName
          ? _value.completeName
          : completeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_LabelNameRes extends _LabelNameRes {
  const _$_LabelNameRes(
      {@JsonKey(name: 'uuid', defaultValue: '') required this.uuid,
      @JsonKey(name: 'complete_name', defaultValue: '')
      required this.completeName})
      : super._();

  factory _$_LabelNameRes.fromJson(Map<String, dynamic> json) =>
      _$$_LabelNameResFromJson(json);

  @override
  @JsonKey(name: 'uuid', defaultValue: '')
  final String uuid;
  @override
  @JsonKey(name: 'complete_name', defaultValue: '')
  final String completeName;

  @override
  String toString() {
    return 'LabelNameRes(uuid: $uuid, completeName: $completeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LabelNameRes &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.completeName, completeName) ||
                other.completeName == completeName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, completeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LabelNameResCopyWith<_$_LabelNameRes> get copyWith =>
      __$$_LabelNameResCopyWithImpl<_$_LabelNameRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelNameResToJson(
      this,
    );
  }
}

abstract class _LabelNameRes extends LabelNameRes {
  const factory _LabelNameRes(
      {@JsonKey(name: 'uuid', defaultValue: '') required final String uuid,
      @JsonKey(name: 'complete_name', defaultValue: '')
      required final String completeName}) = _$_LabelNameRes;
  const _LabelNameRes._() : super._();

  factory _LabelNameRes.fromJson(Map<String, dynamic> json) =
      _$_LabelNameRes.fromJson;

  @override
  @JsonKey(name: 'uuid', defaultValue: '')
  String get uuid;
  @override
  @JsonKey(name: 'complete_name', defaultValue: '')
  String get completeName;
  @override
  @JsonKey(ignore: true)
  _$$_LabelNameResCopyWith<_$_LabelNameRes> get copyWith =>
      throw _privateConstructorUsedError;
}
