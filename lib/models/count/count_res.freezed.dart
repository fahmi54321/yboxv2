// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountRes _$CountResFromJson(Map<String, dynamic> json) {
  return _CountRes.fromJson(json);
}

/// @nodoc
mixin _$CountRes {
  @JsonKey(name: 'count', defaultValue: 0)
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountResCopyWith<CountRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountResCopyWith<$Res> {
  factory $CountResCopyWith(CountRes value, $Res Function(CountRes) then) =
      _$CountResCopyWithImpl<$Res, CountRes>;
  @useResult
  $Res call({@JsonKey(name: 'count', defaultValue: 0) int count});
}

/// @nodoc
class _$CountResCopyWithImpl<$Res, $Val extends CountRes>
    implements $CountResCopyWith<$Res> {
  _$CountResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountResCopyWith<$Res> implements $CountResCopyWith<$Res> {
  factory _$$_CountResCopyWith(
          _$_CountRes value, $Res Function(_$_CountRes) then) =
      __$$_CountResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'count', defaultValue: 0) int count});
}

/// @nodoc
class __$$_CountResCopyWithImpl<$Res>
    extends _$CountResCopyWithImpl<$Res, _$_CountRes>
    implements _$$_CountResCopyWith<$Res> {
  __$$_CountResCopyWithImpl(
      _$_CountRes _value, $Res Function(_$_CountRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_CountRes(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_CountRes extends _CountRes {
  const _$_CountRes(
      {@JsonKey(name: 'count', defaultValue: 0) required this.count})
      : super._();

  factory _$_CountRes.fromJson(Map<String, dynamic> json) =>
      _$$_CountResFromJson(json);

  @override
  @JsonKey(name: 'count', defaultValue: 0)
  final int count;

  @override
  String toString() {
    return 'CountRes(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountRes &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountResCopyWith<_$_CountRes> get copyWith =>
      __$$_CountResCopyWithImpl<_$_CountRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountResToJson(
      this,
    );
  }
}

abstract class _CountRes extends CountRes {
  const factory _CountRes(
          {@JsonKey(name: 'count', defaultValue: 0) required final int count}) =
      _$_CountRes;
  const _CountRes._() : super._();

  factory _CountRes.fromJson(Map<String, dynamic> json) = _$_CountRes.fromJson;

  @override
  @JsonKey(name: 'count', defaultValue: 0)
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_CountResCopyWith<_$_CountRes> get copyWith =>
      throw _privateConstructorUsedError;
}
