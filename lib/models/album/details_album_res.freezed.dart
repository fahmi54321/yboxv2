// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_album_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailsAlbumRes _$DetailsAlbumResFromJson(Map<String, dynamic> json) {
  return _DetailsAlbumRes.fromJson(json);
}

/// @nodoc
mixin _$DetailsAlbumRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang_id')
  LanguageRes? get langId => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_title', defaultValue: '')
  String get releaseTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_version', defaultValue: '')
  String get titleVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'spotify', defaultValue: '')
  String get spotify => throw _privateConstructorUsedError;
  @JsonKey(name: 'itunes', defaultValue: '')
  String get itunes => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_1')
  GenreRes? get genre1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_2')
  GenreRes? get genre2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'c_copyright', defaultValue: '')
  String get cCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'released_date', defaultValue: '')
  String get releasedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'label_name')
  LabelNameRes? get labelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'released_id', defaultValue: 0)
  int get releasedId => throw _privateConstructorUsedError;
  @JsonKey(name: 'upc', defaultValue: 0)
  int get upc => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'publisher')
  PublisherRes? get publisher => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserRes? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: 0)
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsAlbumResCopyWith<DetailsAlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsAlbumResCopyWith<$Res> {
  factory $DetailsAlbumResCopyWith(
          DetailsAlbumRes value, $Res Function(DetailsAlbumRes) then) =
      _$DetailsAlbumResCopyWithImpl<$Res, DetailsAlbumRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'lang_id') LanguageRes? langId,
      @JsonKey(name: 'release_title', defaultValue: '') String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'genre_1') GenreRes? genre1,
      @JsonKey(name: 'genre_2') GenreRes? genre2,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '') String cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '') String releasedDate,
      @JsonKey(name: 'label_name') LabelNameRes? labelName,
      @JsonKey(name: 'released_id', defaultValue: 0) int releasedId,
      @JsonKey(name: 'upc', defaultValue: 0) int upc,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'publisher') PublisherRes? publisher,
      @JsonKey(name: 'user') UserRes? user,
      @JsonKey(name: 'status', defaultValue: 0) int status});

  $LanguageResCopyWith<$Res>? get langId;
  $GenreResCopyWith<$Res>? get genre1;
  $GenreResCopyWith<$Res>? get genre2;
  $LabelNameResCopyWith<$Res>? get labelName;
  $TrackIdResCopyWith<$Res>? get trackId;
  $PublisherResCopyWith<$Res>? get publisher;
  $UserResCopyWith<$Res>? get user;
}

/// @nodoc
class _$DetailsAlbumResCopyWithImpl<$Res, $Val extends DetailsAlbumRes>
    implements $DetailsAlbumResCopyWith<$Res> {
  _$DetailsAlbumResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? langId = freezed,
    Object? releaseTitle = null,
    Object? titleVersion = null,
    Object? spotify = null,
    Object? itunes = null,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? pCopyright = null,
    Object? cCopyright = null,
    Object? releasedDate = null,
    Object? labelName = freezed,
    Object? releasedId = null,
    Object? upc = null,
    Object? trackId = freezed,
    Object? publisher = freezed,
    Object? user = freezed,
    Object? status = null,
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
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      releaseTitle: null == releaseTitle
          ? _value.releaseTitle
          : releaseTitle // ignore: cast_nullable_to_non_nullable
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
      genre1: freezed == genre1
          ? _value.genre1
          : genre1 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      genre2: freezed == genre2
          ? _value.genre2
          : genre2 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      pCopyright: null == pCopyright
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      cCopyright: null == cCopyright
          ? _value.cCopyright
          : cCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      releasedDate: null == releasedDate
          ? _value.releasedDate
          : releasedDate // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: freezed == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as LabelNameRes?,
      releasedId: null == releasedId
          ? _value.releasedId
          : releasedId // ignore: cast_nullable_to_non_nullable
              as int,
      upc: null == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as int,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as PublisherRes?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRes?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $LabelNameResCopyWith<$Res>? get labelName {
    if (_value.labelName == null) {
      return null;
    }

    return $LabelNameResCopyWith<$Res>(_value.labelName!, (value) {
      return _then(_value.copyWith(labelName: value) as $Val);
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
  $PublisherResCopyWith<$Res>? get publisher {
    if (_value.publisher == null) {
      return null;
    }

    return $PublisherResCopyWith<$Res>(_value.publisher!, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
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
abstract class _$$_DetailsAlbumResCopyWith<$Res>
    implements $DetailsAlbumResCopyWith<$Res> {
  factory _$$_DetailsAlbumResCopyWith(
          _$_DetailsAlbumRes value, $Res Function(_$_DetailsAlbumRes) then) =
      __$$_DetailsAlbumResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'lang_id') LanguageRes? langId,
      @JsonKey(name: 'release_title', defaultValue: '') String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '') String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'genre_1') GenreRes? genre1,
      @JsonKey(name: 'genre_2') GenreRes? genre2,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '') String cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '') String releasedDate,
      @JsonKey(name: 'label_name') LabelNameRes? labelName,
      @JsonKey(name: 'released_id', defaultValue: 0) int releasedId,
      @JsonKey(name: 'upc', defaultValue: 0) int upc,
      @JsonKey(name: 'track_id') TrackIdRes? trackId,
      @JsonKey(name: 'publisher') PublisherRes? publisher,
      @JsonKey(name: 'user') UserRes? user,
      @JsonKey(name: 'status', defaultValue: 0) int status});

  @override
  $LanguageResCopyWith<$Res>? get langId;
  @override
  $GenreResCopyWith<$Res>? get genre1;
  @override
  $GenreResCopyWith<$Res>? get genre2;
  @override
  $LabelNameResCopyWith<$Res>? get labelName;
  @override
  $TrackIdResCopyWith<$Res>? get trackId;
  @override
  $PublisherResCopyWith<$Res>? get publisher;
  @override
  $UserResCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_DetailsAlbumResCopyWithImpl<$Res>
    extends _$DetailsAlbumResCopyWithImpl<$Res, _$_DetailsAlbumRes>
    implements _$$_DetailsAlbumResCopyWith<$Res> {
  __$$_DetailsAlbumResCopyWithImpl(
      _$_DetailsAlbumRes _value, $Res Function(_$_DetailsAlbumRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? langId = freezed,
    Object? releaseTitle = null,
    Object? titleVersion = null,
    Object? spotify = null,
    Object? itunes = null,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? pCopyright = null,
    Object? cCopyright = null,
    Object? releasedDate = null,
    Object? labelName = freezed,
    Object? releasedId = null,
    Object? upc = null,
    Object? trackId = freezed,
    Object? publisher = freezed,
    Object? user = freezed,
    Object? status = null,
  }) {
    return _then(_$_DetailsAlbumRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      langId: freezed == langId
          ? _value.langId
          : langId // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      releaseTitle: null == releaseTitle
          ? _value.releaseTitle
          : releaseTitle // ignore: cast_nullable_to_non_nullable
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
      genre1: freezed == genre1
          ? _value.genre1
          : genre1 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      genre2: freezed == genre2
          ? _value.genre2
          : genre2 // ignore: cast_nullable_to_non_nullable
              as GenreRes?,
      pCopyright: null == pCopyright
          ? _value.pCopyright
          : pCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      cCopyright: null == cCopyright
          ? _value.cCopyright
          : cCopyright // ignore: cast_nullable_to_non_nullable
              as String,
      releasedDate: null == releasedDate
          ? _value.releasedDate
          : releasedDate // ignore: cast_nullable_to_non_nullable
              as String,
      labelName: freezed == labelName
          ? _value.labelName
          : labelName // ignore: cast_nullable_to_non_nullable
              as LabelNameRes?,
      releasedId: null == releasedId
          ? _value.releasedId
          : releasedId // ignore: cast_nullable_to_non_nullable
              as int,
      upc: null == upc
          ? _value.upc
          : upc // ignore: cast_nullable_to_non_nullable
              as int,
      trackId: freezed == trackId
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as TrackIdRes?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as PublisherRes?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRes?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DetailsAlbumRes extends _DetailsAlbumRes {
  const _$_DetailsAlbumRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'cover', defaultValue: '') required this.cover,
      @JsonKey(name: 'lang_id') this.langId,
      @JsonKey(name: 'release_title', defaultValue: '')
      required this.releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '')
      required this.titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') required this.spotify,
      @JsonKey(name: 'itunes', defaultValue: '') required this.itunes,
      @JsonKey(name: 'genre_1') this.genre1,
      @JsonKey(name: 'genre_2') this.genre2,
      @JsonKey(name: 'p_copyright', defaultValue: '') required this.pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '') required this.cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '')
      required this.releasedDate,
      @JsonKey(name: 'label_name') this.labelName,
      @JsonKey(name: 'released_id', defaultValue: 0) required this.releasedId,
      @JsonKey(name: 'upc', defaultValue: 0) required this.upc,
      @JsonKey(name: 'track_id') this.trackId,
      @JsonKey(name: 'publisher') this.publisher,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'status', defaultValue: 0) required this.status})
      : super._();

  factory _$_DetailsAlbumRes.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsAlbumResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  final String cover;
  @override
  @JsonKey(name: 'lang_id')
  final LanguageRes? langId;
  @override
  @JsonKey(name: 'release_title', defaultValue: '')
  final String releaseTitle;
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
  @JsonKey(name: 'genre_1')
  final GenreRes? genre1;
  @override
  @JsonKey(name: 'genre_2')
  final GenreRes? genre2;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  final String pCopyright;
  @override
  @JsonKey(name: 'c_copyright', defaultValue: '')
  final String cCopyright;
  @override
  @JsonKey(name: 'released_date', defaultValue: '')
  final String releasedDate;
  @override
  @JsonKey(name: 'label_name')
  final LabelNameRes? labelName;
  @override
  @JsonKey(name: 'released_id', defaultValue: 0)
  final int releasedId;
  @override
  @JsonKey(name: 'upc', defaultValue: 0)
  final int upc;
  @override
  @JsonKey(name: 'track_id')
  final TrackIdRes? trackId;
  @override
  @JsonKey(name: 'publisher')
  final PublisherRes? publisher;
  @override
  @JsonKey(name: 'user')
  final UserRes? user;
  @override
  @JsonKey(name: 'status', defaultValue: 0)
  final int status;

  @override
  String toString() {
    return 'DetailsAlbumRes(id: $id, cover: $cover, langId: $langId, releaseTitle: $releaseTitle, titleVersion: $titleVersion, spotify: $spotify, itunes: $itunes, genre1: $genre1, genre2: $genre2, pCopyright: $pCopyright, cCopyright: $cCopyright, releasedDate: $releasedDate, labelName: $labelName, releasedId: $releasedId, upc: $upc, trackId: $trackId, publisher: $publisher, user: $user, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsAlbumRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.langId, langId) || other.langId == langId) &&
            (identical(other.releaseTitle, releaseTitle) ||
                other.releaseTitle == releaseTitle) &&
            (identical(other.titleVersion, titleVersion) ||
                other.titleVersion == titleVersion) &&
            (identical(other.spotify, spotify) || other.spotify == spotify) &&
            (identical(other.itunes, itunes) || other.itunes == itunes) &&
            (identical(other.genre1, genre1) || other.genre1 == genre1) &&
            (identical(other.genre2, genre2) || other.genre2 == genre2) &&
            (identical(other.pCopyright, pCopyright) ||
                other.pCopyright == pCopyright) &&
            (identical(other.cCopyright, cCopyright) ||
                other.cCopyright == cCopyright) &&
            (identical(other.releasedDate, releasedDate) ||
                other.releasedDate == releasedDate) &&
            (identical(other.labelName, labelName) ||
                other.labelName == labelName) &&
            (identical(other.releasedId, releasedId) ||
                other.releasedId == releasedId) &&
            (identical(other.upc, upc) || other.upc == upc) &&
            (identical(other.trackId, trackId) || other.trackId == trackId) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        cover,
        langId,
        releaseTitle,
        titleVersion,
        spotify,
        itunes,
        genre1,
        genre2,
        pCopyright,
        cCopyright,
        releasedDate,
        labelName,
        releasedId,
        upc,
        trackId,
        publisher,
        user,
        status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsAlbumResCopyWith<_$_DetailsAlbumRes> get copyWith =>
      __$$_DetailsAlbumResCopyWithImpl<_$_DetailsAlbumRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsAlbumResToJson(
      this,
    );
  }
}

abstract class _DetailsAlbumRes extends DetailsAlbumRes {
  const factory _DetailsAlbumRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'cover', defaultValue: '') required final String cover,
      @JsonKey(name: 'lang_id') final LanguageRes? langId,
      @JsonKey(name: 'release_title', defaultValue: '')
      required final String releaseTitle,
      @JsonKey(name: 'title_version', defaultValue: '')
      required final String titleVersion,
      @JsonKey(name: 'spotify', defaultValue: '') required final String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') required final String itunes,
      @JsonKey(name: 'genre_1') final GenreRes? genre1,
      @JsonKey(name: 'genre_2') final GenreRes? genre2,
      @JsonKey(name: 'p_copyright', defaultValue: '')
      required final String pCopyright,
      @JsonKey(name: 'c_copyright', defaultValue: '')
      required final String cCopyright,
      @JsonKey(name: 'released_date', defaultValue: '')
      required final String releasedDate,
      @JsonKey(name: 'label_name') final LabelNameRes? labelName,
      @JsonKey(name: 'released_id', defaultValue: 0)
      required final int releasedId,
      @JsonKey(name: 'upc', defaultValue: 0) required final int upc,
      @JsonKey(name: 'track_id') final TrackIdRes? trackId,
      @JsonKey(name: 'publisher') final PublisherRes? publisher,
      @JsonKey(name: 'user') final UserRes? user,
      @JsonKey(name: 'status', defaultValue: 0)
      required final int status}) = _$_DetailsAlbumRes;
  const _DetailsAlbumRes._() : super._();

  factory _DetailsAlbumRes.fromJson(Map<String, dynamic> json) =
      _$_DetailsAlbumRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover;
  @override
  @JsonKey(name: 'lang_id')
  LanguageRes? get langId;
  @override
  @JsonKey(name: 'release_title', defaultValue: '')
  String get releaseTitle;
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
  @JsonKey(name: 'genre_1')
  GenreRes? get genre1;
  @override
  @JsonKey(name: 'genre_2')
  GenreRes? get genre2;
  @override
  @JsonKey(name: 'p_copyright', defaultValue: '')
  String get pCopyright;
  @override
  @JsonKey(name: 'c_copyright', defaultValue: '')
  String get cCopyright;
  @override
  @JsonKey(name: 'released_date', defaultValue: '')
  String get releasedDate;
  @override
  @JsonKey(name: 'label_name')
  LabelNameRes? get labelName;
  @override
  @JsonKey(name: 'released_id', defaultValue: 0)
  int get releasedId;
  @override
  @JsonKey(name: 'upc', defaultValue: 0)
  int get upc;
  @override
  @JsonKey(name: 'track_id')
  TrackIdRes? get trackId;
  @override
  @JsonKey(name: 'publisher')
  PublisherRes? get publisher;
  @override
  @JsonKey(name: 'user')
  UserRes? get user;
  @override
  @JsonKey(name: 'status', defaultValue: 0)
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsAlbumResCopyWith<_$_DetailsAlbumRes> get copyWith =>
      throw _privateConstructorUsedError;
}
