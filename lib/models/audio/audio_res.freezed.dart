// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioRes _$AudioResFromJson(Map<String, dynamic> json) {
  return _AudioRes.fromJson(json);
}

/// @nodoc
mixin _$AudioRes {
  @JsonKey(name: 'data', defaultValue: [])
  List<DataAudioRes> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationRes get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioResCopyWith<AudioRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioResCopyWith<$Res> {
  factory $AudioResCopyWith(AudioRes value, $Res Function(AudioRes) then) =
      _$AudioResCopyWithImpl<$Res, AudioRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataAudioRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class _$AudioResCopyWithImpl<$Res, $Val extends AudioRes>
    implements $AudioResCopyWith<$Res> {
  _$AudioResCopyWithImpl(this._value, this._then);

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
              as List<DataAudioRes>,
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
abstract class _$$_AudioResCopyWith<$Res> implements $AudioResCopyWith<$Res> {
  factory _$$_AudioResCopyWith(
          _$_AudioRes value, $Res Function(_$_AudioRes) then) =
      __$$_AudioResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<DataAudioRes> data,
      @JsonKey(name: 'pagination') PaginationRes pagination});

  @override
  $PaginationResCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$_AudioResCopyWithImpl<$Res>
    extends _$AudioResCopyWithImpl<$Res, _$_AudioRes>
    implements _$$_AudioResCopyWith<$Res> {
  __$$_AudioResCopyWithImpl(
      _$_AudioRes _value, $Res Function(_$_AudioRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$_AudioRes(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataAudioRes>,
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
class _$_AudioRes extends _AudioRes {
  const _$_AudioRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataAudioRes> data,
      @JsonKey(name: 'pagination') required this.pagination})
      : _data = data,
        super._();

  factory _$_AudioRes.fromJson(Map<String, dynamic> json) =>
      _$$_AudioResFromJson(json);

  final List<DataAudioRes> _data;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataAudioRes> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationRes pagination;

  @override
  String toString() {
    return 'AudioRes(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioRes &&
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
  _$$_AudioResCopyWith<_$_AudioRes> get copyWith =>
      __$$_AudioResCopyWithImpl<_$_AudioRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudioResToJson(
      this,
    );
  }
}

abstract class _AudioRes extends AudioRes {
  const factory _AudioRes(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<DataAudioRes> data,
      @JsonKey(name: 'pagination')
      required final PaginationRes pagination}) = _$_AudioRes;
  const _AudioRes._() : super._();

  factory _AudioRes.fromJson(Map<String, dynamic> json) = _$_AudioRes.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<DataAudioRes> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationRes get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_AudioResCopyWith<_$_AudioRes> get copyWith =>
      throw _privateConstructorUsedError;
}

DataAudioRes _$DataAudioResFromJson(Map<String, dynamic> json) {
  return _DataAudioRes.fromJson(json);
}

/// @nodoc
mixin _$DataAudioRes {
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
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataAudioResCopyWith<DataAudioRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataAudioResCopyWith<$Res> {
  factory $DataAudioResCopyWith(
          DataAudioRes value, $Res Function(DataAudioRes) then) =
      _$DataAudioResCopyWithImpl<$Res, DataAudioRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'released', defaultValue: '') String released,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck,
      @JsonKey(name: 'track_id') TrackIdRes? trackId});

  $TrackIdResCopyWith<$Res>? get trackId;
}

/// @nodoc
class _$DataAudioResCopyWithImpl<$Res, $Val extends DataAudioRes>
    implements $DataAudioResCopyWith<$Res> {
  _$DataAudioResCopyWithImpl(this._value, this._then);

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
    Object? isCheck = null,
    Object? trackId = freezed,
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
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
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
abstract class _$$_DataAudioResCopyWith<$Res>
    implements $DataAudioResCopyWith<$Res> {
  factory _$$_DataAudioResCopyWith(
          _$_DataAudioRes value, $Res Function(_$_DataAudioRes) then) =
      __$$_DataAudioResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'released', defaultValue: '') String released,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck,
      @JsonKey(name: 'track_id') TrackIdRes? trackId});

  @override
  $TrackIdResCopyWith<$Res>? get trackId;
}

/// @nodoc
class __$$_DataAudioResCopyWithImpl<$Res>
    extends _$DataAudioResCopyWithImpl<$Res, _$_DataAudioRes>
    implements _$$_DataAudioResCopyWith<$Res> {
  __$$_DataAudioResCopyWithImpl(
      _$_DataAudioRes _value, $Res Function(_$_DataAudioRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? title = null,
    Object? titleVersion = null,
    Object? released = null,
    Object? isCheck = null,
    Object? trackId = freezed,
  }) {
    return _then(_$_DataAudioRes(
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
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataAudioRes extends _DataAudioRes {
  const _$_DataAudioRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'cover', defaultValue: '') required this.cover,
      @JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'title_version', defaultValue: '')
      required this.titleVersion,
      @JsonKey(name: 'released', defaultValue: '') required this.released,
      @JsonKey(name: 'is_check', defaultValue: 0) required this.isCheck,
      @JsonKey(name: 'track_id') this.trackId})
      : super._();

  factory _$_DataAudioRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataAudioResFromJson(json);

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
  @JsonKey(name: 'is_check', defaultValue: 0)
  final int isCheck;
  @override
  @JsonKey(name: 'track_id')
  final TrackIdRes? trackId;

  @override
  String toString() {
    return 'DataAudioRes(id: $id, cover: $cover, title: $title, titleVersion: $titleVersion, released: $released, isCheck: $isCheck, trackId: $trackId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataAudioRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleVersion, titleVersion) ||
                other.titleVersion == titleVersion) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.trackId, trackId) || other.trackId == trackId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, cover, title, titleVersion, released, isCheck, trackId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataAudioResCopyWith<_$_DataAudioRes> get copyWith =>
      __$$_DataAudioResCopyWithImpl<_$_DataAudioRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataAudioResToJson(
      this,
    );
  }
}

abstract class _DataAudioRes extends DataAudioRes {
  const factory _DataAudioRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'cover', defaultValue: '') required final String cover,
      @JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'title_version', defaultValue: '')
      required final String titleVersion,
      @JsonKey(name: 'released', defaultValue: '')
      required final String released,
      @JsonKey(name: 'is_check', defaultValue: 0) required final int isCheck,
      @JsonKey(name: 'track_id') final TrackIdRes? trackId}) = _$_DataAudioRes;
  const _DataAudioRes._() : super._();

  factory _DataAudioRes.fromJson(Map<String, dynamic> json) =
      _$_DataAudioRes.fromJson;

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
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck;
  @override
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId;
  @override
  @JsonKey(ignore: true)
  _$$_DataAudioResCopyWith<_$_DataAudioRes> get copyWith =>
      throw _privateConstructorUsedError;
}
