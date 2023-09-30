// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoRes _$VideoResFromJson(Map<String, dynamic> json) {
  return _VideoRes.fromJson(json);
}

/// @nodoc
mixin _$VideoRes {
  @JsonKey(name: 'data', defaultValue: [])
  List<DataVideoRes> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationRes get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResCopyWith<VideoRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResCopyWith<$Res> {
  factory $VideoResCopyWith(VideoRes value, $Res Function(VideoRes) then) =
      _$VideoResCopyWithImpl<$Res, VideoRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataVideoRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class _$VideoResCopyWithImpl<$Res, $Val extends VideoRes>
    implements $VideoResCopyWith<$Res> {
  _$VideoResCopyWithImpl(this._value, this._then);

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
              as List<DataVideoRes>,
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
abstract class _$$_VideoResCopyWith<$Res> implements $VideoResCopyWith<$Res> {
  factory _$$_VideoResCopyWith(
          _$_VideoRes value, $Res Function(_$_VideoRes) then) =
      __$$_VideoResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataVideoRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  @override
  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_VideoResCopyWithImpl<$Res>
    extends _$VideoResCopyWithImpl<$Res, _$_VideoRes>
    implements _$$_VideoResCopyWith<$Res> {
  __$$_VideoResCopyWithImpl(
      _$_VideoRes _value, $Res Function(_$_VideoRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$_VideoRes(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataVideoRes>,
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
class _$_VideoRes extends _VideoRes {
  const _$_VideoRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataVideoRes> data,
      @JsonKey(name: 'pagination') required this.pagination})
      : _data = data,
        super._();

  factory _$_VideoRes.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResFromJson(json);

  final List<DataVideoRes> _data;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataVideoRes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationRes pagination;

  @override
  String toString() {
    return 'VideoRes(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoRes &&
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
  _$$_VideoResCopyWith<_$_VideoRes> get copyWith =>
      __$$_VideoResCopyWithImpl<_$_VideoRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResToJson(
      this,
    );
  }
}

abstract class _VideoRes extends VideoRes {
  const factory _VideoRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataVideoRes> data,
      @JsonKey(name: 'pagination')
      required final PaginationRes pagination}) = _$_VideoRes;
  const _VideoRes._() : super._();

  factory _VideoRes.fromJson(Map<String, dynamic> json) = _$_VideoRes.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataVideoRes> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationRes get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_VideoResCopyWith<_$_VideoRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataVideoRes _$DataVideoResFromJson(Map<String, dynamic> json) {
  return _DataVideoRes.fromJson(json);
}

/// @nodoc
mixin _$DataVideoRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_version', defaultValue: '')
  String get titleVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'released', defaultValue: '')
  String get released => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataVideoResCopyWith<DataVideoRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataVideoResCopyWith<$Res> {
  factory $DataVideoResCopyWith(
          DataVideoRes value, $Res Function(DataVideoRes) then) =
      _$DataVideoResCopyWithImpl<$Res, DataVideoRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'released', defaultValue: '') String released,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck});

  $TrackIdResCopyWith<$Res>? get trackId;
}

/// @nodoc
class _$DataVideoResCopyWithImpl<$Res, $Val extends DataVideoRes>
    implements $DataVideoResCopyWith<$Res> {
  _$DataVideoResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? title = null,
    Object? titleVersion = null,
    Object? released = null,
    Object? trackId = freezed,
    Object? isCheck = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleVersion: null == titleVersion
          ? _value.titleVersion
          : titleVersion // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackIdResCopyWith<$Res>? get trackId {
    if (_value.trackId == null) {
      return null;
    }

    return $TrackIdResCopyWith<$Res>(_value.trackId!, (value) {
      return _then(_value.copyWith(trackId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataVideoResCopyWith<$Res>
    implements $DataVideoResCopyWith<$Res> {
  factory _$$_DataVideoResCopyWith(
          _$_DataVideoRes value, $Res Function(_$_DataVideoRes) then) =
      __$$_DataVideoResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'released', defaultValue: '') String released,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck});

  @override
  $TrackIdResCopyWith<$Res>? get trackId;
}

/// @nodoc
class __$$_DataVideoResCopyWithImpl<$Res>
    extends _$DataVideoResCopyWithImpl<$Res, _$_DataVideoRes>
    implements _$$_DataVideoResCopyWith<$Res> {
  __$$_DataVideoResCopyWithImpl(
      _$_DataVideoRes _value, $Res Function(_$_DataVideoRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? title = null,
    Object? titleVersion = null,
    Object? released = null,
    Object? trackId = freezed,
    Object? isCheck = null,
  }) {
    return _then(_$_DataVideoRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleVersion: null == titleVersion
          ? _value.titleVersion
          : titleVersion // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataVideoRes extends _DataVideoRes {
  const _$_DataVideoRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'cover', defaultValue: '') required this.cover,
      @JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'title_version', defaultValue: '')
      required this.titleVersion,
      @JsonKey(name: 'released', defaultValue: '') required this.released,
      @JsonKey(name: 'track_id') this.trackId,
      @JsonKey(name: 'is_check', defaultValue: 0) required this.isCheck})
      : super._();

  factory _$_DataVideoRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataVideoResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  final String cover;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @override
  @JsonKey(name: 'title_version', defaultValue: '')
  final String titleVersion;
  @override
  @JsonKey(name: 'released', defaultValue: '')
  final String released;
  @override
  @JsonKey(name: 'track_id')
  final TrackIdRes? trackId;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  final int isCheck;

  @override
  String toString() {
    return 'DataVideoRes(id: $id, cover: $cover, title: $title, titleVersion: $titleVersion, released: $released, trackId: $trackId, isCheck: $isCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataVideoRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleVersion, titleVersion) ||
                other.titleVersion == titleVersion) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cover, title, titleVersion, released, trackId, isCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataVideoResCopyWith<_$_DataVideoRes> get copyWith =>
      __$$_DataVideoResCopyWithImpl<_$_DataVideoRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataVideoResToJson(
      this,
    );
  }
}

abstract class _DataVideoRes extends DataVideoRes {
  const factory _DataVideoRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'cover', defaultValue: '') required final String cover,
      @JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'title_version', defaultValue: '')
      required final String titleVersion,
      @JsonKey(name: 'released', defaultValue: '')
      required final String released,
      @JsonKey(name: 'track_id') final TrackIdRes? trackId,
      @JsonKey(name: 'is_check', defaultValue: 0)
      required final int isCheck}) = _$_DataVideoRes;
  const _DataVideoRes._() : super._();

  factory _DataVideoRes.fromJson(Map<String, dynamic> json) =
      _$_DataVideoRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get title;
  @override
  @JsonKey(name: 'title_version', defaultValue: '')
  String get titleVersion;
  @override
  @JsonKey(name: 'released', defaultValue: '')
  String get released;
  @override
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck;
  @override
  @JsonKey(ignore: true)
  _$$_DataVideoResCopyWith<_$_DataVideoRes> get copyWith =>
      throw _privateConstructorUsedError;
}
