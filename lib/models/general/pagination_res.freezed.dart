// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationRes _$PaginationResFromJson(Map<String, dynamic> json) {
  return _PaginationRes.fromJson(json);
}

/// @nodoc
mixin _$PaginationRes {
  @JsonKey(name: 'last_page', defaultValue: 0)
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page', defaultValue: 0)
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'total', defaultValue: 0)
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationResCopyWith<PaginationRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationResCopyWith<$Res> {
  factory $PaginationResCopyWith(
          PaginationRes value, $Res Function(PaginationRes) then) =
      _$PaginationResCopyWithImpl<$Res, PaginationRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'last_page', defaultValue: 0) int lastPage,
      @JsonKey(name: 'per_page', defaultValue: 0) int perPage,
      @JsonKey(name: 'total', defaultValue: 0) int total});
}

/// @nodoc
class _$PaginationResCopyWithImpl<$Res, $Val extends PaginationRes>
    implements $PaginationResCopyWith<$Res> {
  _$PaginationResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationResCopyWith<$Res>
    implements $PaginationResCopyWith<$Res> {
  factory _$$_PaginationResCopyWith(
          _$_PaginationRes value, $Res Function(_$_PaginationRes) then) =
      __$$_PaginationResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'last_page', defaultValue: 0) int lastPage,
      @JsonKey(name: 'per_page', defaultValue: 0) int perPage,
      @JsonKey(name: 'total', defaultValue: 0) int total});
}

/// @nodoc
class __$$_PaginationResCopyWithImpl<$Res>
    extends _$PaginationResCopyWithImpl<$Res, _$_PaginationRes>
    implements _$$_PaginationResCopyWith<$Res> {
  __$$_PaginationResCopyWithImpl(
      _$_PaginationRes _value, $Res Function(_$_PaginationRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastPage = null,
    Object? perPage = null,
    Object? total = null,
  }) {
    return _then(_$_PaginationRes(
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_PaginationRes extends _PaginationRes {
  const _$_PaginationRes(
      {@JsonKey(name: 'last_page', defaultValue: 0) required this.lastPage,
      @JsonKey(name: 'per_page', defaultValue: 0) required this.perPage,
      @JsonKey(name: 'total', defaultValue: 0) required this.total})
      : super._();

  factory _$_PaginationRes.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationResFromJson(json);

  @override
  @JsonKey(name: 'last_page', defaultValue: 0)
  final int lastPage;
  @override
  @JsonKey(name: 'per_page', defaultValue: 0)
  final int perPage;
  @override
  @JsonKey(name: 'total', defaultValue: 0)
  final int total;

  @override
  String toString() {
    return 'PaginationRes(lastPage: $lastPage, perPage: $perPage, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationRes &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastPage, perPage, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationResCopyWith<_$_PaginationRes> get copyWith =>
      __$$_PaginationResCopyWithImpl<_$_PaginationRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationResToJson(
      this,
    );
  }
}

abstract class _PaginationRes extends PaginationRes {
  const factory _PaginationRes(
      {@JsonKey(name: 'last_page', defaultValue: 0) required final int lastPage,
      @JsonKey(name: 'per_page', defaultValue: 0) required final int perPage,
      @JsonKey(name: 'total', defaultValue: 0)
      required final int total}) = _$_PaginationRes;
  const _PaginationRes._() : super._();

  factory _PaginationRes.fromJson(Map<String, dynamic> json) =
      _$_PaginationRes.fromJson;

  @override
  @JsonKey(name: 'last_page', defaultValue: 0)
  int get lastPage;
  @override
  @JsonKey(name: 'per_page', defaultValue: 0)
  int get perPage;
  @override
  @JsonKey(name: 'total', defaultValue: 0)
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationResCopyWith<_$_PaginationRes> get copyWith =>
      throw _privateConstructorUsedError;
}
