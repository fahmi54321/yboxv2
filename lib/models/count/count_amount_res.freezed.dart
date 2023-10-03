// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_amount_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountAmountRes _$CountAmountResFromJson(Map<String, dynamic> json) {
  return _CountAmountRes.fromJson(json);
}

/// @nodoc
mixin _$CountAmountRes {
  @JsonKey(name: 'count', defaultValue: '')
  String get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'rp', defaultValue: '')
  String get rp => throw _privateConstructorUsedError;
  @JsonKey(name: 'usd', defaultValue: 0)
  int get usd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountAmountResCopyWith<CountAmountRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountAmountResCopyWith<$Res> {
  factory $CountAmountResCopyWith(
          CountAmountRes value, $Res Function(CountAmountRes) then) =
      _$CountAmountResCopyWithImpl<$Res, CountAmountRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'count', defaultValue: '') String count,
      @JsonKey(name: 'rp', defaultValue: '') String rp,
      @JsonKey(name: 'usd', defaultValue: 0) int usd});
}

/// @nodoc
class _$CountAmountResCopyWithImpl<$Res, $Val extends CountAmountRes>
    implements $CountAmountResCopyWith<$Res> {
  _$CountAmountResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rp = null,
    Object? usd = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      rp: null == rp
          ? _value.rp
          : rp // ignore: cast_nullable_to_non_nullable
              as String,
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CountAmountResCopyWith<$Res>
    implements $CountAmountResCopyWith<$Res> {
  factory _$$_CountAmountResCopyWith(
          _$_CountAmountRes value, $Res Function(_$_CountAmountRes) then) =
      __$$_CountAmountResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'count', defaultValue: '') String count,
      @JsonKey(name: 'rp', defaultValue: '') String rp,
      @JsonKey(name: 'usd', defaultValue: 0) int usd});
}

/// @nodoc
class __$$_CountAmountResCopyWithImpl<$Res>
    extends _$CountAmountResCopyWithImpl<$Res, _$_CountAmountRes>
    implements _$$_CountAmountResCopyWith<$Res> {
  __$$_CountAmountResCopyWithImpl(
      _$_CountAmountRes _value, $Res Function(_$_CountAmountRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? rp = null,
    Object? usd = null,
  }) {
    return _then(_$_CountAmountRes(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      rp: null == rp
          ? _value.rp
          : rp // ignore: cast_nullable_to_non_nullable
              as String,
      usd: null == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_CountAmountRes extends _CountAmountRes {
  const _$_CountAmountRes(
      {@JsonKey(name: 'count', defaultValue: '') required this.count,
      @JsonKey(name: 'rp', defaultValue: '') required this.rp,
      @JsonKey(name: 'usd', defaultValue: 0) required this.usd})
      : super._();

  factory _$_CountAmountRes.fromJson(Map<String, dynamic> json) =>
      _$$_CountAmountResFromJson(json);

  @override
  @JsonKey(name: 'count', defaultValue: '')
  final String count;
  @override
  @JsonKey(name: 'rp', defaultValue: '')
  final String rp;
  @override
  @JsonKey(name: 'usd', defaultValue: 0)
  final int usd;

  @override
  String toString() {
    return 'CountAmountRes(count: $count, rp: $rp, usd: $usd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountAmountRes &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.rp, rp) || other.rp == rp) &&
            (identical(other.usd, usd) || other.usd == usd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, rp, usd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CountAmountResCopyWith<_$_CountAmountRes> get copyWith =>
      __$$_CountAmountResCopyWithImpl<_$_CountAmountRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountAmountResToJson(
      this,
    );
  }
}

abstract class _CountAmountRes extends CountAmountRes {
  const factory _CountAmountRes(
      {@JsonKey(name: 'count', defaultValue: '') required final String count,
      @JsonKey(name: 'rp', defaultValue: '') required final String rp,
      @JsonKey(name: 'usd', defaultValue: 0)
      required final int usd}) = _$_CountAmountRes;
  const _CountAmountRes._() : super._();

  factory _CountAmountRes.fromJson(Map<String, dynamic> json) =
      _$_CountAmountRes.fromJson;

  @override
  @JsonKey(name: 'count', defaultValue: '')
  String get count;
  @override
  @JsonKey(name: 'rp', defaultValue: '')
  String get rp;
  @override
  @JsonKey(name: 'usd', defaultValue: 0)
  int get usd;
  @override
  @JsonKey(ignore: true)
  _$$_CountAmountResCopyWith<_$_CountAmountRes> get copyWith =>
      throw _privateConstructorUsedError;
}
