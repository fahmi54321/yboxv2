// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grafik_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GrafikRes _$GrafikResFromJson(Map<String, dynamic> json) {
  return _GrafikRes.fromJson(json);
}

/// @nodoc
mixin _$GrafikRes {
  @JsonKey(name: 'series', defaultValue: [])
  List<DataSeries> get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrafikResCopyWith<GrafikRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrafikResCopyWith<$Res> {
  factory $GrafikResCopyWith(GrafikRes value, $Res Function(GrafikRes) then) =
      _$GrafikResCopyWithImpl<$Res, GrafikRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'series', defaultValue: []) List<DataSeries> series});
}

/// @nodoc
class _$GrafikResCopyWithImpl<$Res, $Val extends GrafikRes>
    implements $GrafikResCopyWith<$Res> {
  _$GrafikResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
  }) {
    return _then(_value.copyWith(
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as List<DataSeries>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GrafikResCopyWith<$Res> implements $GrafikResCopyWith<$Res> {
  factory _$$_GrafikResCopyWith(
          _$_GrafikRes value, $Res Function(_$_GrafikRes) then) =
      __$$_GrafikResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'series', defaultValue: []) List<DataSeries> series});
}

/// @nodoc
class __$$_GrafikResCopyWithImpl<$Res>
    extends _$GrafikResCopyWithImpl<$Res, _$_GrafikRes>
    implements _$$_GrafikResCopyWith<$Res> {
  __$$_GrafikResCopyWithImpl(
      _$_GrafikRes _value, $Res Function(_$_GrafikRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
  }) {
    return _then(_$_GrafikRes(
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<DataSeries>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_GrafikRes extends _GrafikRes {
  const _$_GrafikRes(
      {@JsonKey(name: 'series', defaultValue: [])
      required final List<DataSeries> series})
      : _series = series,
        super._();

  factory _$_GrafikRes.fromJson(Map<String, dynamic> json) =>
      _$$_GrafikResFromJson(json);

  final List<DataSeries> _series;
  @override
  @JsonKey(name: 'series', defaultValue: [])
  List<DataSeries> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'GrafikRes(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GrafikRes &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GrafikResCopyWith<_$_GrafikRes> get copyWith =>
      __$$_GrafikResCopyWithImpl<_$_GrafikRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrafikResToJson(
      this,
    );
  }
}

abstract class _GrafikRes extends GrafikRes {
  const factory _GrafikRes(
      {@JsonKey(name: 'series', defaultValue: [])
      required final List<DataSeries> series}) = _$_GrafikRes;
  const _GrafikRes._() : super._();

  factory _GrafikRes.fromJson(Map<String, dynamic> json) =
      _$_GrafikRes.fromJson;

  @override
  @JsonKey(name: 'series', defaultValue: [])
  List<DataSeries> get series;
  @override
  @JsonKey(ignore: true)
  _$$_GrafikResCopyWith<_$_GrafikRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSeries _$DataSeriesFromJson(Map<String, dynamic> json) {
  return _DataSeries.fromJson(json);
}

/// @nodoc
mixin _$DataSeries {
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', defaultValue: [])
  List<int> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSeriesCopyWith<DataSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSeriesCopyWith<$Res> {
  factory $DataSeriesCopyWith(
          DataSeries value, $Res Function(DataSeries) then) =
      _$DataSeriesCopyWithImpl<$Res, DataSeries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'data', defaultValue: []) List<int> data});
}

/// @nodoc
class _$DataSeriesCopyWithImpl<$Res, $Val extends DataSeries>
    implements $DataSeriesCopyWith<$Res> {
  _$DataSeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataSeriesCopyWith<$Res>
    implements $DataSeriesCopyWith<$Res> {
  factory _$$_DataSeriesCopyWith(
          _$_DataSeries value, $Res Function(_$_DataSeries) then) =
      __$$_DataSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'data', defaultValue: []) List<int> data});
}

/// @nodoc
class __$$_DataSeriesCopyWithImpl<$Res>
    extends _$DataSeriesCopyWithImpl<$Res, _$_DataSeries>
    implements _$$_DataSeriesCopyWith<$Res> {
  __$$_DataSeriesCopyWithImpl(
      _$_DataSeries _value, $Res Function(_$_DataSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? data = null,
  }) {
    return _then(_$_DataSeries(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataSeries extends _DataSeries {
  const _$_DataSeries(
      {@JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'data', defaultValue: []) required final List<int> data})
      : _data = data,
        super._();

  factory _$_DataSeries.fromJson(Map<String, dynamic> json) =>
      _$$_DataSeriesFromJson(json);

  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  final List<int> _data;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<int> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataSeries(name: $name, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataSeries &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataSeriesCopyWith<_$_DataSeries> get copyWith =>
      __$$_DataSeriesCopyWithImpl<_$_DataSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataSeriesToJson(
      this,
    );
  }
}

abstract class _DataSeries extends DataSeries {
  const factory _DataSeries(
      {@JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'data', defaultValue: [])
      required final List<int> data}) = _$_DataSeries;
  const _DataSeries._() : super._();

  factory _DataSeries.fromJson(Map<String, dynamic> json) =
      _$_DataSeries.fromJson;

  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<int> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataSeriesCopyWith<_$_DataSeries> get copyWith =>
      throw _privateConstructorUsedError;
}
