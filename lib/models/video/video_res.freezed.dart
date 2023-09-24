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
  @JsonKey(name: 'id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_version', defaultValue: '')
  String get titleVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify => throw _privateConstructorUsedError;
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes => throw _privateConstructorUsedError;
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_copyright', defaultValue: '')
  String get cCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'released', defaultValue: '')
  String get released => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_name')
  LeaderRes? get labelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'internal_released_id', defaultValue: 0)
  int get internalReleasedId => throw _privateConstructorUsedError;
  @JsonKey(name: 'upc', defaultValue: 0)
  int get upc => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  LeaderRes? get labelMain => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang_id')
  LanguageRes? get langId => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_1')
  GenreRes? get genre1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_2')
  GenreRes? get genre2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  UserRes? get user => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '') String cCopyright,
      @JsonKey(name: 'released', defaultValue: '') String released,
      @JsonKey(name: 'label_name') LeaderRes? labelName,
      @JsonKey(name: 'internal_released_id', defaultValue: 0)
      int internalReleasedId,
      @JsonKey(name: 'upc', defaultValue: 0) int upc,
      @JsonKey(name: 'label') LeaderRes? labelMain,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck,
      @JsonKey(name: 'lang_id') LanguageRes? langId,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'genre_1') GenreRes? genre1,
      @JsonKey(name: 'genre_2') GenreRes? genre2,
      @JsonKey(name: 'user_id') UserRes? user});

  $LeaderResCopyWith<$Res>? get labelName;
  $LeaderResCopyWith<$Res>? get labelMain;
  $LanguageResCopyWith<$Res>? get langId;
  $TrackIdResCopyWith<$Res>? get trackId;
  $GenreResCopyWith<$Res>? get genre1;
  $GenreResCopyWith<$Res>? get genre2;
  $UserResCopyWith<$Res>? get user;
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
    Object? spotify = null,
    Object? itunes = null,
    Object? pCopyright = null,
    Object? cCopyright = null,
    Object? released = null,
    Object? labelName = freezed,
    Object? internalReleasedId = null,
    Object? upc = null,
    Object? labelMain = freezed,
    Object? isCheck = null,
    Object? langId = freezed,
    Object? trackId = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
      itunes: null == itunes
          ? _value.itunes
          : itunes // ignore: cast_nullable_to_non_nullable
              as String,
      pCopyright: null == pCopyright
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      cCopyright: null == cCopyright
          ? _value.cCopyright
          : cCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: freezed == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as LeaderRes?,
      internalReleasedId: null == internalReleasedId
          ? _value.internalReleasedId
          : internalReleasedId // ignore: cast_nullable_to_non_nullable
              as int,
      upc: null == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as int,
      labelMain: freezed == labelMain
          ? _value.labelMain
          : labelMain // ignore: cast_nullable_to_non_nullable
              as LeaderRes?,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
      genre1: freezed == genre1
          ? _value.genre1
          : genre1 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      genre2: freezed == genre2
          ? _value.genre2
          : genre2 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaderResCopyWith<$Res>? get labelName {
    if (_value.labelName == null) {
      return null;
    }

    return $LeaderResCopyWith<$Res>(_value.labelName!, (value) {
      return _then(_value.copyWith(labelName: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaderResCopyWith<$Res>? get labelMain {
    if (_value.labelMain == null) {
      return null;
    }

    return $LeaderResCopyWith<$Res>(_value.labelMain!, (value) {
      return _then(_value.copyWith(labelMain: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageResCopyWith<$Res>? get langId {
    if (_value.langId == null) {
      return null;
    }

    return $LanguageResCopyWith<$Res>(_value.langId!, (value) {
      return _then(_value.copyWith(langId: value) as $Val);
    });
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

  @override
  @pragma('vm:prefer-inline')
  $GenreResCopyWith<$Res>? get genre1 {
    if (_value.genre1 == null) {
      return null;
    }

    return $GenreResCopyWith<$Res>(_value.genre1!, (value) {
      return _then(_value.copyWith(genre1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenreResCopyWith<$Res>? get genre2 {
    if (_value.genre2 == null) {
      return null;
    }

    return $GenreResCopyWith<$Res>(_value.genre2!, (value) {
      return _then(_value.copyWith(genre2: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserResCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
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
      {@JsonKey(name: 'id', defaultValue: 0) int id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '') String cCopyright,
      @JsonKey(name: 'released', defaultValue: '') String released,
      @JsonKey(name: 'label_name') LeaderRes? labelName,
      @JsonKey(name: 'internal_released_id', defaultValue: 0)
      int internalReleasedId,
      @JsonKey(name: 'upc', defaultValue: 0) int upc,
      @JsonKey(name: 'label') LeaderRes? labelMain,
      @JsonKey(name: 'is_check', defaultValue: 0) int isCheck,
      @JsonKey(name: 'lang_id') LanguageRes? langId,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'genre_1') GenreRes? genre1,
      @JsonKey(name: 'genre_2') GenreRes? genre2,
      @JsonKey(name: 'user_id') UserRes? user});

  @override
  $LeaderResCopyWith<$Res>? get labelName;
  @override
  $LeaderResCopyWith<$Res>? get labelMain;
  @override
  $LanguageResCopyWith<$Res>? get langId;
  @override
  $TrackIdResCopyWith<$Res>? get trackId;
  @override
  $GenreResCopyWith<$Res>? get genre1;
  @override
  $GenreResCopyWith<$Res>? get genre2;
  @override
  $UserResCopyWith<$Res>? get user;
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
    Object? spotify = null,
    Object? itunes = null,
    Object? pCopyright = null,
    Object? cCopyright = null,
    Object? released = null,
    Object? labelName = freezed,
    Object? internalReleasedId = null,
    Object? upc = null,
    Object? labelMain = freezed,
    Object? isCheck = null,
    Object? langId = freezed,
    Object? trackId = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_DataVideoRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
      itunes: null == itunes
          ? _value.itunes
          : itunes // ignore: cast_nullable_to_non_nullable
              as String,
      pCopyright: null == pCopyright
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      cCopyright: null == cCopyright
          ? _value.cCopyright
          : cCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: freezed == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as LeaderRes?,
      internalReleasedId: null == internalReleasedId
          ? _value.internalReleasedId
          : internalReleasedId // ignore: cast_nullable_to_non_nullable
              as int,
      upc: null == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as int,
      labelMain: freezed == labelMain
          ? _value.labelMain
          : labelMain // ignore: cast_nullable_to_non_nullable
              as LeaderRes?,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as int,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
      genre1: freezed == genre1
          ? _value.genre1
          : genre1 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      genre2: freezed == genre2
          ? _value.genre2
          : genre2 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRes?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DataVideoRes extends _DataVideoRes {
  const _$_DataVideoRes(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'cover', defaultValue: '') required this.cover,
      @JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'title_version', defaultValue: '')
      required this.titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') required this.spotify,
      @JsonKey(name: 'itunes', defaultValue: '') required this.itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '') required this.pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '') required this.cCopyright,
      @JsonKey(name: 'released', defaultValue: '') required this.released,
      @JsonKey(name: 'label_name') this.labelName,
      @JsonKey(name: 'internal_released_id', defaultValue: 0)
      required this.internalReleasedId,
      @JsonKey(name: 'upc', defaultValue: 0) required this.upc,
      @JsonKey(name: 'label') this.labelMain,
      @JsonKey(name: 'is_check', defaultValue: 0) required this.isCheck,
      @JsonKey(name: 'lang_id') this.langId,
      @JsonKey(name: 'track_id') this.trackId,
      @JsonKey(name: 'genre_1') this.genre1,
      @JsonKey(name: 'genre_2') this.genre2,
      @JsonKey(name: 'user_id') this.user})
      : super._();

  factory _$_DataVideoRes.fromJson(Map<String, dynamic> json) =>
      _$$_DataVideoResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int id;
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
  @JsonKey(name: 'spotify', defaultValue: '')
  final String spotify;
  @override
  @JsonKey(name: 'itunes', defaultValue: '')
  final String itunes;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  final String pCopyright;
  @override
  @JsonKey(name: 'c_copyright', defaultValue: '')
  final String cCopyright;
  @override
  @JsonKey(name: 'released', defaultValue: '')
  final String released;
  @override
  @JsonKey(name: 'label_name')
  final LeaderRes? labelName;
  @override
  @JsonKey(name: 'internal_released_id', defaultValue: 0)
  final int internalReleasedId;
  @override
  @JsonKey(name: 'upc', defaultValue: 0)
  final int upc;
  @override
  @JsonKey(name: 'label')
  final LeaderRes? labelMain;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  final int isCheck;
  @override
  @JsonKey(name: 'lang_id')
  final LanguageRes? langId;
  @override
  @JsonKey(name: 'track_id')
  final TrackIdRes? trackId;
  @override
  @JsonKey(name: 'genre_1')
  final GenreRes? genre1;
  @override
  @JsonKey(name: 'genre_2')
  final GenreRes? genre2;
  @override
  @JsonKey(name: 'user_id')
  final UserRes? user;

  @override
  String toString() {
    return 'DataVideoRes(id: $id, cover: $cover, title: $title, titleVersion: $titleVersion, spotify: $spotify, itunes: $itunes, pCopyright: $pCopyright, cCopyright: $cCopyright, released: $released, labelName: $labelName, internalReleasedId: $internalReleasedId, upc: $upc, labelMain: $labelMain, isCheck: $isCheck, langId: $langId, trackId: $trackId, genre1: $genre1, genre2: $genre2, user: $user)';
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
            (identical(other.spotify, spotify) || other.spotify == spotify) &&
            (identical(other.itunes, itunes) || other.itunes == itunes) &&
            (identical(other.pCopyright, pCopyright) ||
                other.pCopyright == pCopyright) &&
            (identical(other.cCopyright, cCopyright) ||
                other.cCopyright == cCopyright) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.labelName, labelName) ||
                other.labelName == labelName) &&
            (identical(other.internalReleasedId, internalReleasedId) ||
                other.internalReleasedId == internalReleasedId) &&
            (identical(other.upc, upc) || other.upc == upc) &&
            (identical(other.labelMain, labelMain) ||
                other.labelMain == labelMain) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.langId, langId) || other.langId == langId) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.genre1, genre1) || other.genre1 == genre1) &&
            (identical(other.genre2, genre2) || other.genre2 == genre2) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        cover,
        title,
        titleVersion,
        spotify,
        itunes,
        pCopyright,
        cCopyright,
        released,
        labelName,
        internalReleasedId,
        upc,
        labelMain,
        isCheck,
        langId,
        trackId,
        genre1,
        genre2,
        user
      ]);

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
      {@JsonKey(name: 'id', defaultValue: 0) required final int id,
      @JsonKey(name: 'cover', defaultValue: '') required final String cover,
      @JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'title_version', defaultValue: '')
      required final String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') required final String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') required final String itunes,
      @JsonKey(name: 'p_copyright', defaultValue: '')
      required final String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '')
      required final String cCopyright,
      @JsonKey(name: 'released', defaultValue: '')
      required final String released,
      @JsonKey(name: 'label_name') final LeaderRes? labelName,
      @JsonKey(name: 'internal_released_id', defaultValue: 0)
      required final int internalReleasedId,
      @JsonKey(name: 'upc', defaultValue: 0) required final int upc,
      @JsonKey(name: 'label') final LeaderRes? labelMain,
      @JsonKey(name: 'is_check', defaultValue: 0) required final int isCheck,
      @JsonKey(name: 'lang_id') final LanguageRes? langId,
      @JsonKey(name: 'track_id') final TrackIdRes? trackId,
      @JsonKey(name: 'genre_1') final GenreRes? genre1,
      @JsonKey(name: 'genre_2') final GenreRes? genre2,
      @JsonKey(name: 'user_id') final UserRes? user}) = _$_DataVideoRes;
  const _DataVideoRes._() : super._();

  factory _DataVideoRes.fromJson(Map<String, dynamic> json) =
      _$_DataVideoRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int get id;
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
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify;
  @override
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright;
  @override
  @JsonKey(name: 'c_copyright', defaultValue: '')
  String get cCopyright;
  @override
  @JsonKey(name: 'released', defaultValue: '')
  String get released;
  @override
  @JsonKey(name: 'label_name')
  LeaderRes? get labelName;
  @override
  @JsonKey(name: 'internal_released_id', defaultValue: 0)
  int get internalReleasedId;
  @override
  @JsonKey(name: 'upc', defaultValue: 0)
  int get upc;
  @override
  @JsonKey(name: 'label')
  LeaderRes? get labelMain;
  @override
  @JsonKey(name: 'is_check', defaultValue: 0)
  int get isCheck;
  @override
  @JsonKey(name: 'lang_id')
  LanguageRes? get langId;
  @override
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId;
  @override
  @JsonKey(name: 'genre_1')
  GenreRes? get genre1;
  @override
  @JsonKey(name: 'genre_2')
  GenreRes? get genre2;
  @override
  @JsonKey(name: 'user_id')
  UserRes? get user;
  @override
  @JsonKey(ignore: true)
  _$$_DataVideoResCopyWith<_$_DataVideoRes> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackIdRes _$TrackIdResFromJson(Map<String, dynamic> json) {
  return _TrackIdRes.fromJson(json);
}

/// @nodoc
mixin _$TrackIdRes {
  @JsonKey(name: 'artis_name', defaultValue: '')
  String get artisName => throw _privateConstructorUsedError;
  @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
  int get artisNameAnotherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_title', defaultValue: '')
  String get trackTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_version', defaultValue: '')
  String get trackVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_title_another_id', defaultValue: 0)
  int get trackTitleAnotherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isrc', defaultValue: 0)
  int get isrc => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang_lyric', defaultValue: 0)
  int get langYyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify => throw _privateConstructorUsedError;
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_artis_id', defaultValue: 0)
  int get otherArtisId => throw _privateConstructorUsedError;
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  int get explisitLyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  int get thisTrackIs => throw _privateConstructorUsedError;
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'previews_start_time', defaultValue: 0)
  int get previewsStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'internal_track_id', defaultValue: 0)
  int get internalTrackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lyric', defaultValue: '')
  String get lyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributor_id', defaultValue: '')
  String get contributorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributor')
  ConstributorRes? get contributor => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang')
  LanguageRes? get lang => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre1')
  GenreRes? get genre1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre2')
  GenreRes? get genre2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackIdResCopyWith<TrackIdRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackIdResCopyWith<$Res> {
  factory $TrackIdResCopyWith(
          TrackIdRes value, $Res Function(TrackIdRes) then) =
      _$TrackIdResCopyWithImpl<$Res, TrackIdRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'artis_name', defaultValue: '') String artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
      int artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'track_title', defaultValue: '') String trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '') String trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
      int trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0) int isrc,
      @JsonKey(name: 'lang_lyric', defaultValue: 0) int langYyric,
      @JsonKey(name: 'created_at', defaultValue: '') String createdAt,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0) int otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0) int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0) int thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
      int previewsStartTime,
      @JsonKey(name: 'internal_track_id', defaultValue: 0) int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '') String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '') String contributorId,
      @JsonKey(name: 'contributor') ConstributorRes? contributor,
      @JsonKey(name: 'lang') LanguageRes? lang,
      @JsonKey(name: 'genre1') GenreRes? genre1,
      @JsonKey(name: 'genre2') GenreRes? genre2});

  $ConstributorResCopyWith<$Res>? get contributor;
  $LanguageResCopyWith<$Res>? get lang;
  $GenreResCopyWith<$Res>? get genre1;
  $GenreResCopyWith<$Res>? get genre2;
}

/// @nodoc
class _$TrackIdResCopyWithImpl<$Res, $Val extends TrackIdRes>
    implements $TrackIdResCopyWith<$Res> {
  _$TrackIdResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artisName = null,
    Object? artisNameAnotherId = null,
    Object? image = null,
    Object? cover = null,
    Object? trackTitle = null,
    Object? trackVersion = null,
    Object? trackTitleAnotherId = null,
    Object? isrc = null,
    Object? langYyric = null,
    Object? createdAt = null,
    Object? spotify = null,
    Object? itunes = null,
    Object? otherArtisId = null,
    Object? explisitLyric = null,
    Object? thisTrackIs = null,
    Object? pCopyright = null,
    Object? previewsStartTime = null,
    Object? internalTrackId = null,
    Object? lyric = null,
    Object? contributorId = null,
    Object? contributor = freezed,
    Object? lang = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
  }) {
    return _then(_value.copyWith(
      artisName: null == artisName
          ? _value.artisName
          : artisName // ignore: cast_nullable_to_non_nullable
              as String,
      artisNameAnotherId: null == artisNameAnotherId
          ? _value.artisNameAnotherId
          : artisNameAnotherId // ignore: cast_nullable_to_non_nullable
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
      trackVersion: null == trackVersion
          ? _value.trackVersion
          : trackVersion // ignore: cast_nullable_to_non_nullable
              as String,
      trackTitleAnotherId: null == trackTitleAnotherId
          ? _value.trackTitleAnotherId
          : trackTitleAnotherId // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as int,
      langYyric: null == langYyric
          ? _value.langYyric
          : langYyric // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
      itunes: null == itunes
          ? _value.itunes
          : itunes // ignore: cast_nullable_to_non_nullable
              as String,
      otherArtisId: null == otherArtisId
          ? _value.otherArtisId
          : otherArtisId // ignore: cast_nullable_to_non_nullable
              as int,
      explisitLyric: null == explisitLyric
          ? _value.explisitLyric
          : explisitLyric // ignore: cast_nullable_to_non_nullable
              as int,
      thisTrackIs: null == thisTrackIs
          ? _value.thisTrackIs
          : thisTrackIs // ignore: cast_nullable_to_non_nullable
              as int,
      pCopyright: null == pCopyright
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      previewsStartTime: null == previewsStartTime
          ? _value.previewsStartTime
          : previewsStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      internalTrackId: null == internalTrackId
          ? _value.internalTrackId
          : internalTrackId // ignore: cast_nullable_to_non_nullable
              as int,
      lyric: null == lyric
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
      contributorId: null == contributorId
          ? _value.contributorId
          : contributorId // ignore: cast_nullable_to_non_nullable
              as String,
      contributor: freezed == contributor
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as ConstributorRes?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      genre1: freezed == genre1
          ? _value.genre1
          : genre1 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      genre2: freezed == genre2
          ? _value.genre2
          : genre2 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstributorResCopyWith<$Res>? get contributor {
    if (_value.contributor == null) {
      return null;
    }

    return $ConstributorResCopyWith<$Res>(_value.contributor!, (value) {
      return _then(_value.copyWith(contributor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageResCopyWith<$Res>? get lang {
    if (_value.lang == null) {
      return null;
    }

    return $LanguageResCopyWith<$Res>(_value.lang!, (value) {
      return _then(_value.copyWith(lang: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenreResCopyWith<$Res>? get genre1 {
    if (_value.genre1 == null) {
      return null;
    }

    return $GenreResCopyWith<$Res>(_value.genre1!, (value) {
      return _then(_value.copyWith(genre1: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenreResCopyWith<$Res>? get genre2 {
    if (_value.genre2 == null) {
      return null;
    }

    return $GenreResCopyWith<$Res>(_value.genre2!, (value) {
      return _then(_value.copyWith(genre2: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrackIdResCopyWith<$Res>
    implements $TrackIdResCopyWith<$Res> {
  factory _$$_TrackIdResCopyWith(
          _$_TrackIdRes value, $Res Function(_$_TrackIdRes) then) =
      __$$_TrackIdResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'artis_name', defaultValue: '') String artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
      int artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'track_title', defaultValue: '') String trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '') String trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
      int trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0) int isrc,
      @JsonKey(name: 'lang_lyric', defaultValue: 0) int langYyric,
      @JsonKey(name: 'created_at', defaultValue: '') String createdAt,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0) int otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0) int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0) int thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
      int previewsStartTime,
      @JsonKey(name: 'internal_track_id', defaultValue: 0) int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '') String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '') String contributorId,
      @JsonKey(name: 'contributor') ConstributorRes? contributor,
      @JsonKey(name: 'lang') LanguageRes? lang,
      @JsonKey(name: 'genre1') GenreRes? genre1,
      @JsonKey(name: 'genre2') GenreRes? genre2});

  @override
  $ConstributorResCopyWith<$Res>? get contributor;
  @override
  $LanguageResCopyWith<$Res>? get lang;
  @override
  $GenreResCopyWith<$Res>? get genre1;
  @override
  $GenreResCopyWith<$Res>? get genre2;
}

/// @nodoc
class __$$_TrackIdResCopyWithImpl<$Res>
    extends _$TrackIdResCopyWithImpl<$Res, _$_TrackIdRes>
    implements _$$_TrackIdResCopyWith<$Res> {
  __$$_TrackIdResCopyWithImpl(
      _$_TrackIdRes _value, $Res Function(_$_TrackIdRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artisName = null,
    Object? artisNameAnotherId = null,
    Object? image = null,
    Object? cover = null,
    Object? trackTitle = null,
    Object? trackVersion = null,
    Object? trackTitleAnotherId = null,
    Object? isrc = null,
    Object? langYyric = null,
    Object? createdAt = null,
    Object? spotify = null,
    Object? itunes = null,
    Object? otherArtisId = null,
    Object? explisitLyric = null,
    Object? thisTrackIs = null,
    Object? pCopyright = null,
    Object? previewsStartTime = null,
    Object? internalTrackId = null,
    Object? lyric = null,
    Object? contributorId = null,
    Object? contributor = freezed,
    Object? lang = freezed,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
  }) {
    return _then(_$_TrackIdRes(
      artisName: null == artisName
          ? _value.artisName
          : artisName // ignore: cast_nullable_to_non_nullable
              as String,
      artisNameAnotherId: null == artisNameAnotherId
          ? _value.artisNameAnotherId
          : artisNameAnotherId // ignore: cast_nullable_to_non_nullable
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
      trackVersion: null == trackVersion
          ? _value.trackVersion
          : trackVersion // ignore: cast_nullable_to_non_nullable
              as String,
      trackTitleAnotherId: null == trackTitleAnotherId
          ? _value.trackTitleAnotherId
          : trackTitleAnotherId // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as int,
      langYyric: null == langYyric
          ? _value.langYyric
          : langYyric // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
      itunes: null == itunes
          ? _value.itunes
          : itunes // ignore: cast_nullable_to_non_nullable
              as String,
      otherArtisId: null == otherArtisId
          ? _value.otherArtisId
          : otherArtisId // ignore: cast_nullable_to_non_nullable
              as int,
      explisitLyric: null == explisitLyric
          ? _value.explisitLyric
          : explisitLyric // ignore: cast_nullable_to_non_nullable
              as int,
      thisTrackIs: null == thisTrackIs
          ? _value.thisTrackIs
          : thisTrackIs // ignore: cast_nullable_to_non_nullable
              as int,
      pCopyright: null == pCopyright
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      previewsStartTime: null == previewsStartTime
          ? _value.previewsStartTime
          : previewsStartTime // ignore: cast_nullable_to_non_nullable
              as int,
      internalTrackId: null == internalTrackId
          ? _value.internalTrackId
          : internalTrackId // ignore: cast_nullable_to_non_nullable
              as int,
      lyric: null == lyric
          ? _value.lyric
          : lyric // ignore: cast_nullable_to_non_nullable
              as String,
      contributorId: null == contributorId
          ? _value.contributorId
          : contributorId // ignore: cast_nullable_to_non_nullable
              as String,
      contributor: freezed == contributor
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as ConstributorRes?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      genre1: freezed == genre1
          ? _value.genre1
          : genre1 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      genre2: freezed == genre2
          ? _value.genre2
          : genre2 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_TrackIdRes extends _TrackIdRes {
  const _$_TrackIdRes(
      {@JsonKey(name: 'artis_name', defaultValue: '') required this.artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
      required this.artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '') required this.image,
      @JsonKey(name: 'cover', defaultValue: '') required this.cover,
      @JsonKey(name: 'track_title', defaultValue: '') required this.trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '')
      required this.trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
      required this.trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0) required this.isrc,
      @JsonKey(name: 'lang_lyric', defaultValue: 0) required this.langYyric,
      @JsonKey(name: 'created_at', defaultValue: '') required this.createdAt,
      @JsonKey(name: 'spotify', defaultValue: '') required this.spotify,
      @JsonKey(name: 'itunes', defaultValue: '') required this.itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0)
      required this.otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
      required this.explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
      required this.thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '') required this.pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
      required this.previewsStartTime,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
      required this.internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '') required this.lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
      required this.contributorId,
      @JsonKey(name: 'contributor') this.contributor,
      @JsonKey(name: 'lang') this.lang,
      @JsonKey(name: 'genre1') this.genre1,
      @JsonKey(name: 'genre2') this.genre2})
      : super._();

  factory _$_TrackIdRes.fromJson(Map<String, dynamic> json) =>
      _$$_TrackIdResFromJson(json);

  @override
  @JsonKey(name: 'artis_name', defaultValue: '')
  final String artisName;
  @override
  @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
  final int artisNameAnotherId;
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
  @JsonKey(name: 'track_version', defaultValue: '')
  final String trackVersion;
  @override
  @JsonKey(name: 'track_title_another_id', defaultValue: 0)
  final int trackTitleAnotherId;
  @override
  @JsonKey(name: 'isrc', defaultValue: 0)
  final int isrc;
  @override
  @JsonKey(name: 'lang_lyric', defaultValue: 0)
  final int langYyric;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  final String createdAt;
  @override
  @JsonKey(name: 'spotify', defaultValue: '')
  final String spotify;
  @override
  @JsonKey(name: 'itunes', defaultValue: '')
  final String itunes;
  @override
  @JsonKey(name: 'other_artis_id', defaultValue: 0)
  final int otherArtisId;
  @override
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  final int explisitLyric;
  @override
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  final int thisTrackIs;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  final String pCopyright;
  @override
  @JsonKey(name: 'previews_start_time', defaultValue: 0)
  final int previewsStartTime;
  @override
  @JsonKey(name: 'internal_track_id', defaultValue: 0)
  final int internalTrackId;
  @override
  @JsonKey(name: 'lyric', defaultValue: '')
  final String lyric;
  @override
  @JsonKey(name: 'contributor_id', defaultValue: '')
  final String contributorId;
  @override
  @JsonKey(name: 'contributor')
  final ConstributorRes? contributor;
  @override
  @JsonKey(name: 'lang')
  final LanguageRes? lang;
  @override
  @JsonKey(name: 'genre1')
  final GenreRes? genre1;
  @override
  @JsonKey(name: 'genre2')
  final GenreRes? genre2;

  @override
  String toString() {
    return 'TrackIdRes(artisName: $artisName, artisNameAnotherId: $artisNameAnotherId, image: $image, cover: $cover, trackTitle: $trackTitle, trackVersion: $trackVersion, trackTitleAnotherId: $trackTitleAnotherId, isrc: $isrc, langYyric: $langYyric, createdAt: $createdAt, spotify: $spotify, itunes: $itunes, otherArtisId: $otherArtisId, explisitLyric: $explisitLyric, thisTrackIs: $thisTrackIs, pCopyright: $pCopyright, previewsStartTime: $previewsStartTime, internalTrackId: $internalTrackId, lyric: $lyric, contributorId: $contributorId, contributor: $contributor, lang: $lang, genre1: $genre1, genre2: $genre2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackIdRes &&
            (identical(other.artisName, artisName) ||
                other.artisName == artisName) &&
            (identical(other.artisNameAnotherId, artisNameAnotherId) ||
                other.artisNameAnotherId == artisNameAnotherId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.trackTitle, trackTitle) ||
                other.trackTitle == trackTitle) &&
            (identical(other.trackVersion, trackVersion) ||
                other.trackVersion == trackVersion) &&
            (identical(other.trackTitleAnotherId, trackTitleAnotherId) ||
                other.trackTitleAnotherId == trackTitleAnotherId) &&
            (identical(other.isrc, isrc) || other.isrc == isrc) &&
            (identical(other.langYyric, langYyric) ||
                other.langYyric == langYyric) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.spotify, spotify) || other.spotify == spotify) &&
            (identical(other.itunes, itunes) || other.itunes == itunes) &&
            (identical(other.otherArtisId, otherArtisId) ||
                other.otherArtisId == otherArtisId) &&
            (identical(other.explisitLyric, explisitLyric) ||
                other.explisitLyric == explisitLyric) &&
            (identical(other.thisTrackIs, thisTrackIs) ||
                other.thisTrackIs == thisTrackIs) &&
            (identical(other.pCopyright, pCopyright) ||
                other.pCopyright == pCopyright) &&
            (identical(other.previewsStartTime, previewsStartTime) ||
                other.previewsStartTime == previewsStartTime) &&
            (identical(other.internalTrackId, internalTrackId) ||
                other.internalTrackId == internalTrackId) &&
            (identical(other.lyric, lyric) || other.lyric == lyric) &&
            (identical(other.contributorId, contributorId) ||
                other.contributorId == contributorId) &&
            (identical(other.contributor, contributor) ||
                other.contributor == contributor) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.genre1, genre1) || other.genre1 == genre1) &&
            (identical(other.genre2, genre2) || other.genre2 == genre2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        artisName,
        artisNameAnotherId,
        image,
        cover,
        trackTitle,
        trackVersion,
        trackTitleAnotherId,
        isrc,
        langYyric,
        createdAt,
        spotify,
        itunes,
        otherArtisId,
        explisitLyric,
        thisTrackIs,
        pCopyright,
        previewsStartTime,
        internalTrackId,
        lyric,
        contributorId,
        contributor,
        lang,
        genre1,
        genre2
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrackIdResCopyWith<_$_TrackIdRes> get copyWith =>
      __$$_TrackIdResCopyWithImpl<_$_TrackIdRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrackIdResToJson(
      this,
    );
  }
}

abstract class _TrackIdRes extends TrackIdRes {
  const factory _TrackIdRes(
      {@JsonKey(name: 'artis_name', defaultValue: '')
      required final String artisName,
      @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
      required final int artisNameAnotherId,
      @JsonKey(name: 'image', defaultValue: '') required final String image,
      @JsonKey(name: 'cover', defaultValue: '') required final String cover,
      @JsonKey(name: 'track_title', defaultValue: '')
      required final String trackTitle,
      @JsonKey(name: 'track_version', defaultValue: '')
      required final String trackVersion,
      @JsonKey(name: 'track_title_another_id', defaultValue: 0)
      required final int trackTitleAnotherId,
      @JsonKey(name: 'isrc', defaultValue: 0) required final int isrc,
      @JsonKey(name: 'lang_lyric', defaultValue: 0)
      required final int langYyric,
      @JsonKey(name: 'created_at', defaultValue: '')
      required final String createdAt,
      @JsonKey(name: 'spotify', defaultValue: '') required final String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') required final String itunes,
      @JsonKey(name: 'other_artis_id', defaultValue: 0)
      required final int otherArtisId,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
      required final int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
      required final int thisTrackIs,
      @JsonKey(name: 'p_copyright', defaultValue: '')
      required final String pCopyright,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
      required final int previewsStartTime,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
      required final int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '') required final String lyric,
      @JsonKey(name: 'contributor_id', defaultValue: '')
      required final String contributorId,
      @JsonKey(name: 'contributor') final ConstributorRes? contributor,
      @JsonKey(name: 'lang') final LanguageRes? lang,
      @JsonKey(name: 'genre1') final GenreRes? genre1,
      @JsonKey(name: 'genre2') final GenreRes? genre2}) = _$_TrackIdRes;
  const _TrackIdRes._() : super._();

  factory _TrackIdRes.fromJson(Map<String, dynamic> json) =
      _$_TrackIdRes.fromJson;

  @override
  @JsonKey(name: 'artis_name', defaultValue: '')
  String get artisName;
  @override
  @JsonKey(name: 'artis_name_another_id', defaultValue: 0)
  int get artisNameAnotherId;
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
  @JsonKey(name: 'track_version', defaultValue: '')
  String get trackVersion;
  @override
  @JsonKey(name: 'track_title_another_id', defaultValue: 0)
  int get trackTitleAnotherId;
  @override
  @JsonKey(name: 'isrc', defaultValue: 0)
  int get isrc;
  @override
  @JsonKey(name: 'lang_lyric', defaultValue: 0)
  int get langYyric;
  @override
  @JsonKey(name: 'created_at', defaultValue: '')
  String get createdAt;
  @override
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify;
  @override
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes;
  @override
  @JsonKey(name: 'other_artis_id', defaultValue: 0)
  int get otherArtisId;
  @override
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  int get explisitLyric;
  @override
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  int get thisTrackIs;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright;
  @override
  @JsonKey(name: 'previews_start_time', defaultValue: 0)
  int get previewsStartTime;
  @override
  @JsonKey(name: 'internal_track_id', defaultValue: 0)
  int get internalTrackId;
  @override
  @JsonKey(name: 'lyric', defaultValue: '')
  String get lyric;
  @override
  @JsonKey(name: 'contributor_id', defaultValue: '')
  String get contributorId;
  @override
  @JsonKey(name: 'contributor')
  ConstributorRes? get contributor;
  @override
  @JsonKey(name: 'lang')
  LanguageRes? get lang;
  @override
  @JsonKey(name: 'genre1')
  GenreRes? get genre1;
  @override
  @JsonKey(name: 'genre2')
  GenreRes? get genre2;
  @override
  @JsonKey(ignore: true)
  _$$_TrackIdResCopyWith<_$_TrackIdRes> get copyWith =>
      throw _privateConstructorUsedError;
}
