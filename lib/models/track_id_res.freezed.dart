// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_id_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  @JsonKey(name: 'link_yt', defaultValue: '')
  String get linkYt => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributor_id', defaultValue: 0)
  int get contributorId => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'link_yt', defaultValue: '') String linkYt,
      @JsonKey(name: 'contributor_id', defaultValue: 0) int contributorId,
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
    Object? linkYt = null,
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
      linkYt: null == linkYt
          ? _value.linkYt
          : linkYt // ignore: cast_nullable_to_non_nullable
              as String,
      contributorId: null == contributorId
          ? _value.contributorId
          : contributorId // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: 'link_yt', defaultValue: '') String linkYt,
      @JsonKey(name: 'contributor_id', defaultValue: 0) int contributorId,
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
    Object? linkYt = null,
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
      linkYt: null == linkYt
          ? _value.linkYt
          : linkYt // ignore: cast_nullable_to_non_nullable
              as String,
      contributorId: null == contributorId
          ? _value.contributorId
          : contributorId // ignore: cast_nullable_to_non_nullable
              as int,
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
      @JsonKey(name: 'link_yt', defaultValue: '') required this.linkYt,
      @JsonKey(name: 'contributor_id', defaultValue: 0)
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
  @JsonKey(name: 'link_yt', defaultValue: '')
  final String linkYt;
  @override
  @JsonKey(name: 'contributor_id', defaultValue: 0)
  final int contributorId;
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
    return 'TrackIdRes(artisName: $artisName, artisNameAnotherId: $artisNameAnotherId, image: $image, cover: $cover, trackTitle: $trackTitle, trackVersion: $trackVersion, trackTitleAnotherId: $trackTitleAnotherId, isrc: $isrc, langYyric: $langYyric, createdAt: $createdAt, spotify: $spotify, itunes: $itunes, otherArtisId: $otherArtisId, explisitLyric: $explisitLyric, thisTrackIs: $thisTrackIs, pCopyright: $pCopyright, previewsStartTime: $previewsStartTime, internalTrackId: $internalTrackId, lyric: $lyric, linkYt: $linkYt, contributorId: $contributorId, contributor: $contributor, lang: $lang, genre1: $genre1, genre2: $genre2)';
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
            (identical(other.linkYt, linkYt) || other.linkYt == linkYt) &&
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
        linkYt,
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
      @JsonKey(name: 'link_yt', defaultValue: '') required final String linkYt,
      @JsonKey(name: 'contributor_id', defaultValue: 0)
      required final int contributorId,
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
  @JsonKey(name: 'link_yt', defaultValue: '')
  String get linkYt;
  @override
  @JsonKey(name: 'contributor_id', defaultValue: 0)
  int get contributorId;
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
