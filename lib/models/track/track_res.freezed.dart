// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrackRes _$TrackResFromJson(Map<String, dynamic> json) {
  return _TrackRes.fromJson(json);
}

/// @nodoc
mixin _$TrackRes {
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTrackRes> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationRes get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackResCopyWith<TrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackResCopyWith<$Res> {
  factory $TrackResCopyWith(TrackRes value, $Res Function(TrackRes) then) =
      _$TrackResCopyWithImpl<$Res, TrackRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataTrackRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class _$TrackResCopyWithImpl<$Res, $Val extends TrackRes>
    implements $TrackResCopyWith<$Res> {
  _$TrackResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTrackRes>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationRes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationResCopyWith<$Res> get pagination {
    return $PaginationResCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrackResCopyWith<$Res> implements $TrackResCopyWith<$Res> {
  factory _$$_TrackResCopyWith(
          _$_TrackRes value, $Res Function(_$_TrackRes) then) =
      __$$_TrackResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataTrackRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  @override
  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_TrackResCopyWithImpl<$Res>
    extends _$TrackResCopyWithImpl<$Res, _$_TrackRes>
    implements _$$_TrackResCopyWith<$Res> {
  __$$_TrackResCopyWithImpl(
      _$_TrackRes _value, $Res Function(_$_TrackRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$_TrackRes(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTrackRes>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationRes,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_TrackRes extends _TrackRes {
  const _$_TrackRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataTrackRes> data,
      @JsonKey(name: 'pagination') required this.pagination})
      : _data = data,
        super._();

  factory _$_TrackRes.fromJson(Map<String, dynamic> json) =>
      _$$_TrackResFromJson(json);

  final List<DataTrackRes> _data;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTrackRes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationRes pagination;

  @override
  String toString() {
    return 'TrackRes(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackRes &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackResCopyWith<_$_TrackRes> get copyWith =>
      __$$_TrackResCopyWithImpl<_$_TrackRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackResToJson(
      this,
    );
  }
}

abstract class _TrackRes extends TrackRes {
  const factory _TrackRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataTrackRes> data,
      @JsonKey(name: 'pagination')
      required final PaginationRes pagination}) = _$_TrackRes;
  const _TrackRes._() : super._();

  factory _TrackRes.fromJson(Map<String, dynamic> json) = _$_TrackRes.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataTrackRes> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationRes get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_TrackResCopyWith<_$_TrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTrackRes _$DataTrackResFromJson(Map<String, dynamic> json) {
  return _DataTrackRes.fromJson(json);
}

/// @nodoc
mixin _$DataTrackRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: 0)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_title', defaultValue: '')
  String get trackTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'artis_name', defaultValue: '')
  String get artisName => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_version', defaultValue: '')
  String get trackVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTrackResCopyWith<DataTrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTrackResCopyWith<$Res> {
  factory $DataTrackResCopyWith(
          DataTrackRes value, $Res Function(DataTrackRes) then) =
      _$DataTrackResCopyWithImpl<$Res, DataTrackRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'status', defaultValue: 0) int status,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'track_title', defaultValue: '') String trackTitle,
      @JsonKey(name: 'artis_name', defaultValue: '') String artisName,
      @JsonKey(name: 'track_version', defaultValue: '') String trackVersion,
      @JsonKey(name: 'created_at', defaultValue: '') String createdAt});
}

/// @nodoc
class _$DataTrackResCopyWithImpl<$Res, $Val extends DataTrackRes>
    implements $DataTrackResCopyWith<$Res> {
  _$DataTrackResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? image = null,
    Object? cover = null,
    Object? trackTitle = null,
    Object? artisName = null,
    Object? trackVersion = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      trackTitle: null == trackTitle
          ? _value.trackTitle
          : trackTitle // ignore: cast_nullable_to_non_nullable
              as String,
      artisName: null == artisName
          ? _value.artisName
          : artisName // ignore: cast_nullable_to_non_nullable
              as String,
      trackVersion: null == trackVersion
          ? _value.trackVersion
          : trackVersion // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTrackResCopyWith<$Res>
    implements $DataTrackResCopyWith<$Res> {
  factory _$$_DataTrackResCopyWith(
          _$_DataTrackRes value, $Res Function(_$_DataTrackRes) then) =
      __$$_DataTrackResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'status', defaultValue: 0) int status,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'track_title', defaultValue: '') String trackTitle,
      @JsonKey(name: 'artis_name', defaultValue: '') String artisName,
      @JsonKey(name: 'track_version', defaultValue: '') String trackVersion,
      @JsonKey(name: 'created_at', defaultValue: '') String createdAt});
}

/// @nodoc
class __$$_DataTrackResCopyWithImpl<$Res>
    extends _$DataTrackResCopyWithImpl<$Res, _$_DataTrackRes>
    implements _$$_DataTrackResCopyWith<$Res> {
  __$$_DataTrackResCopyWithImpl(
      _$_DataTrackRes _value, $Res Function(_$_DataTrackRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? image = null,
    Object? cover = null,
    Object? trackTitle = null,
    Object? artisName = null,
    Object? trackVersion = null,
    Object? createdAt = null,
  }) {
    return _then(_$_DataTrackRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      trackTitle: null == trackTitle
          ? _value.trackTitle
          : trackTitle // ignore: cast_nullable_to_non_nullable
              as String,
      artisName: null == artisName
          ? _value.artisName
          : artisName // ignore: cast_nullable_to_non_nullable
              as String,
      trackVersion: null == trackVersion
          ? _value.trackVersion
          : trackVersion // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataTrackRes extends _DataTrackRes {
  const _$_DataTrackRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'status', defaultValue: 0) required this.status,
      @JsonKey(name: 'image', defaultValue: '') required this.image,
      @JsonKey(name: 'cover', defaultValue: '') required this.cover,
      @JsonKey(name: 'track_title', defaultValue: '') required this.trackTitle,
      @JsonKey(name: 'artis_name', defaultValue: '') required this.artisName,
      @JsonKey(name: 'track_version', defaultValue: '')
      required this.trackVersion,
      @JsonKey(name: 'created_at', defaultValue: '') required this.createdAt})
      : super._();

  factory _$_DataTrackRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataTrackResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'status', defaultValue: 0)
  final int status;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  final String cover;
  @override
  @JsonKey(name: 'track_title', defaultValue: '')
  final String trackTitle;
  @override
  @JsonKey(name: 'artis_name', defaultValue: '')
  final String artisName;
  @override
  @JsonKey(name: 'track_version', defaultValue: '')
  final String trackVersion;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;

  @override
  String toString() {
    return 'DataTrackRes(id: $id, status: $status, image: $image, cover: $cover, trackTitle: $trackTitle, artisName: $artisName, trackVersion: $trackVersion, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTrackRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.trackTitle, trackTitle) ||
                other.trackTitle == trackTitle) &&
            (identical(other.artisName, artisName) ||
                other.artisName == artisName) &&
            (identical(other.trackVersion, trackVersion) ||
                other.trackVersion == trackVersion) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, image, cover,
      trackTitle, artisName, trackVersion, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTrackResCopyWith<_$_DataTrackRes> get copyWith =>
      __$$_DataTrackResCopyWithImpl<_$_DataTrackRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTrackResToJson(
      this,
    );
  }
}

abstract class _DataTrackRes extends DataTrackRes {
  const factory _DataTrackRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'status', defaultValue: 0) required final int status,
      @JsonKey(name: 'image', defaultValue: '') required final String image,
      @JsonKey(name: 'cover', defaultValue: '') required final String cover,
      @JsonKey(name: 'track_title', defaultValue: '')
      required final String trackTitle,
      @JsonKey(name: 'artis_name', defaultValue: '')
      required final String artisName,
      @JsonKey(name: 'track_version', defaultValue: '')
      required final String trackVersion,
      @JsonKey(name: 'created_at', defaultValue: '')
      required final String createdAt}) = _$_DataTrackRes;
  const _DataTrackRes._() : super._();

  factory _DataTrackRes.fromJson(Map<String, dynamic> json) =
      _$_DataTrackRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'status', defaultValue: 0)
  int get status;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover;
  @override
  @JsonKey(name: 'track_title', defaultValue: '')
  String get trackTitle;
  @override
  @JsonKey(name: 'artis_name', defaultValue: '')
  String get artisName;
  @override
  @JsonKey(name: 'track_version', defaultValue: '')
  String get trackVersion;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_DataTrackResCopyWith<_$_DataTrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}
