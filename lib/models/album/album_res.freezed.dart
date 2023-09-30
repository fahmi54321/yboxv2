// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumRes _$AlbumResFromJson(Map<String, dynamic> json) {
  return _AlbumRes.fromJson(json);
}

/// @nodoc
mixin _$AlbumRes {
  @JsonKey(name: 'data', defaultValue: [])
  List<DataAlbumRes> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationRes get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumResCopyWith<AlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumResCopyWith<$Res> {
  factory $AlbumResCopyWith(AlbumRes value, $Res Function(AlbumRes) then) =
      _$AlbumResCopyWithImpl<$Res, AlbumRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataAlbumRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class _$AlbumResCopyWithImpl<$Res, $Val extends AlbumRes>
    implements $AlbumResCopyWith<$Res> {
  _$AlbumResCopyWithImpl(this._value, this._then);

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
              as List<DataAlbumRes>,
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
abstract class _$$_AlbumResCopyWith<$Res> implements $AlbumResCopyWith<$Res> {
  factory _$$_AlbumResCopyWith(
          _$_AlbumRes value, $Res Function(_$_AlbumRes) then) =
      __$$_AlbumResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataAlbumRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  @override
  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_AlbumResCopyWithImpl<$Res>
    extends _$AlbumResCopyWithImpl<$Res, _$_AlbumRes>
    implements _$$_AlbumResCopyWith<$Res> {
  __$$_AlbumResCopyWithImpl(
      _$_AlbumRes _value, $Res Function(_$_AlbumRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$_AlbumRes(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataAlbumRes>,
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
class _$_AlbumRes extends _AlbumRes {
  const _$_AlbumRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataAlbumRes> data,
      @JsonKey(name: 'pagination') required this.pagination})
      : _data = data,
        super._();

  factory _$_AlbumRes.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumResFromJson(json);

  final List<DataAlbumRes> _data;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataAlbumRes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationRes pagination;

  @override
  String toString() {
    return 'AlbumRes(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumRes &&
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
  _$$_AlbumResCopyWith<_$_AlbumRes> get copyWith =>
      __$$_AlbumResCopyWithImpl<_$_AlbumRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumResToJson(
      this,
    );
  }
}

abstract class _AlbumRes extends AlbumRes {
  const factory _AlbumRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataAlbumRes> data,
      @JsonKey(name: 'pagination')
      required final PaginationRes pagination}) = _$_AlbumRes;
  const _AlbumRes._() : super._();

  factory _AlbumRes.fromJson(Map<String, dynamic> json) = _$_AlbumRes.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataAlbumRes> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationRes get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumResCopyWith<_$_AlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataAlbumRes _$DataAlbumResFromJson(Map<String, dynamic> json) {
  return _DataAlbumRes.fromJson(json);
}

/// @nodoc
mixin _$DataAlbumRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_title', defaultValue: '')
  String get releaseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_version', defaultValue: '')
  String get titleVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'released_date', defaultValue: '')
  String get releasedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAlbumResCopyWith<DataAlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAlbumResCopyWith<$Res> {
  factory $DataAlbumResCopyWith(
          DataAlbumRes value, $Res Function(DataAlbumRes) then) =
      _$DataAlbumResCopyWithImpl<$Res, DataAlbumRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'release_title', defaultValue: '') String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'released_date', defaultValue: '') String releasedDate,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck});

  $TrackIdResCopyWith<$Res>? get trackId;
}

/// @nodoc
class _$DataAlbumResCopyWithImpl<$Res, $Val extends DataAlbumRes>
    implements $DataAlbumResCopyWith<$Res> {
  _$DataAlbumResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? releaseTitle = null,
    Object? titleVersion = null,
    Object? releasedDate = null,
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
      releaseTitle: null == releaseTitle
          ? _value.releaseTitle
          : releaseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      titleVersion: null == titleVersion
          ? _value.titleVersion
          : titleVersion // ignore: cast_nullable_to_non_nullable
              as String,
      releasedDate: null == releasedDate
          ? _value.releasedDate
          : releasedDate // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DataAlbumResCopyWith<$Res>
    implements $DataAlbumResCopyWith<$Res> {
  factory _$$_DataAlbumResCopyWith(
          _$_DataAlbumRes value, $Res Function(_$_DataAlbumRes) then) =
      __$$_DataAlbumResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'release_title', defaultValue: '') String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'released_date', defaultValue: '') String releasedDate,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck});

  @override
  $TrackIdResCopyWith<$Res>? get trackId;
}

/// @nodoc
class __$$_DataAlbumResCopyWithImpl<$Res>
    extends _$DataAlbumResCopyWithImpl<$Res, _$_DataAlbumRes>
    implements _$$_DataAlbumResCopyWith<$Res> {
  __$$_DataAlbumResCopyWithImpl(
      _$_DataAlbumRes _value, $Res Function(_$_DataAlbumRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? releaseTitle = null,
    Object? titleVersion = null,
    Object? releasedDate = null,
    Object? trackId = freezed,
    Object? isCheck = null,
  }) {
    return _then(_$_DataAlbumRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      releaseTitle: null == releaseTitle
          ? _value.releaseTitle
          : releaseTitle // ignore: cast_nullable_to_non_nullable
              as String,
      titleVersion: null == titleVersion
          ? _value.titleVersion
          : titleVersion // ignore: cast_nullable_to_non_nullable
              as String,
      releasedDate: null == releasedDate
          ? _value.releasedDate
          : releasedDate // ignore: cast_nullable_to_non_nullable
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
class _$_DataAlbumRes extends _DataAlbumRes {
  const _$_DataAlbumRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'cover', defaultValue: '') required this.cover,
      @JsonKey(name: 'release_title', defaultValue: '')
      required this.releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '')
      required this.titleVersion,
      @JsonKey(name: 'released_date', defaultValue: '')
      required this.releasedDate,
      @JsonKey(name: 'track_id') this.trackId,
      @JsonKey(name: 'is_check', defaultValue: 0) required this.isCheck})
      : super._();

  factory _$_DataAlbumRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataAlbumResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  final String cover;
  @override
  @JsonKey(name: 'release_title', defaultValue: '')
  final String releaseTitle;
  @override
  @JsonKey(name: 'title_version', defaultValue: '')
  final String titleVersion;
  @override
  @JsonKey(name: 'released_date', defaultValue: '')
  final String releasedDate;
  @override
  @JsonKey(name: 'track_id')
  final TrackIdRes? trackId;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  final int isCheck;

  @override
  String toString() {
    return 'DataAlbumRes(id: $id, cover: $cover, releaseTitle: $releaseTitle, titleVersion: $titleVersion, releasedDate: $releasedDate, trackId: $trackId, isCheck: $isCheck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataAlbumRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.releaseTitle, releaseTitle) ||
                other.releaseTitle == releaseTitle) &&
            (identical(other.titleVersion, titleVersion) ||
                other.titleVersion == titleVersion) &&
            (identical(other.releasedDate, releasedDate) ||
                other.releasedDate == releasedDate) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, cover, releaseTitle,
      titleVersion, releasedDate, trackId, isCheck);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataAlbumResCopyWith<_$_DataAlbumRes> get copyWith =>
      __$$_DataAlbumResCopyWithImpl<_$_DataAlbumRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataAlbumResToJson(
      this,
    );
  }
}

abstract class _DataAlbumRes extends DataAlbumRes {
  const factory _DataAlbumRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'cover', defaultValue: '') required final String cover,
      @JsonKey(name: 'release_title', defaultValue: '')
      required final String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '')
      required final String titleVersion,
      @JsonKey(name: 'released_date', defaultValue: '')
      required final String releasedDate,
      @JsonKey(name: 'track_id') final TrackIdRes? trackId,
      @JsonKey(name: 'is_check', defaultValue: 0)
      required final int isCheck}) = _$_DataAlbumRes;
  const _DataAlbumRes._() : super._();

  factory _DataAlbumRes.fromJson(Map<String, dynamic> json) =
      _$_DataAlbumRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover;
  @override
  @JsonKey(name: 'release_title', defaultValue: '')
  String get releaseTitle;
  @override
  @JsonKey(name: 'title_version', defaultValue: '')
  String get titleVersion;
  @override
  @JsonKey(name: 'released_date', defaultValue: '')
  String get releasedDate;
  @override
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck;
  @override
  @JsonKey(ignore: true)
  _$$_DataAlbumResCopyWith<_$_DataAlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}
