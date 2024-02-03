// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_track_res.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailsTrackRes _$DetailsTrackResFromJson(Map<String, dynamic> json) {
  return _DetailsTrackRes.fromJson(json);
}

/// @nodoc
mixin _$DetailsTrackRes {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'lang_lyric')
  LanguageRes? get langLyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'track_title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'artis_name', defaultValue: '')
  String get artisName => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'user')
  UserRes? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'isrc', defaultValue: 0)
  int get isrc => throw _privateConstructorUsedError;
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  int get explisitLyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  int get thisTrackIs => throw _privateConstructorUsedError;
  @JsonKey(name: 'previews_start_time', defaultValue: 0)
  int get previewsStartTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'internal_track_id', defaultValue: 0)
  int get internalTrackId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lyric', defaultValue: '')
  String get lyric => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: 0)
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_yt', defaultValue: '')
  String get linkYt => throw _privateConstructorUsedError;
  @JsonKey(name: 'contributor')
  ConstributorRes? get contributor => throw _privateConstructorUsedError;
  @JsonKey(name: 'publisher')
  PublisherRes? get publisher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsTrackResCopyWith<DetailsTrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsTrackResCopyWith<$Res> {
  factory $DetailsTrackResCopyWith(
          DetailsTrackRes value, $Res Function(DetailsTrackRes) then) =
      _$DetailsTrackResCopyWithImpl<$Res, DetailsTrackRes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'lang_lyric') LanguageRes? langLyric,
      @JsonKey(name: 'track_title', defaultValue: '') String title,
      @JsonKey(name: 'artis_name', defaultValue: '') String artisName,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'genre_1') GenreRes? genre1,
      @JsonKey(name: 'genre_2') GenreRes? genre2,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'user') UserRes? user,
      @JsonKey(name: 'isrc', defaultValue: 0) int isrc,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0) int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0) int thisTrackIs,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
      int previewsStartTime,
      @JsonKey(name: 'internal_track_id', defaultValue: 0) int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '') String lyric,
      @JsonKey(name: 'status', defaultValue: 0) int status,
      @JsonKey(name: 'link_yt', defaultValue: '') String linkYt,
      @JsonKey(name: 'contributor') ConstributorRes? contributor,
      @JsonKey(name: 'publisher') PublisherRes? publisher});

  $LanguageResCopyWith<$Res>? get langLyric;
  $GenreResCopyWith<$Res>? get genre1;
  $GenreResCopyWith<$Res>? get genre2;
  $UserResCopyWith<$Res>? get user;
  $ConstributorResCopyWith<$Res>? get contributor;
  $PublisherResCopyWith<$Res>? get publisher;
}

/// @nodoc
class _$DetailsTrackResCopyWithImpl<$Res, $Val extends DetailsTrackRes>
    implements $DetailsTrackResCopyWith<$Res> {
  _$DetailsTrackResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? image = null,
    Object? langLyric = freezed,
    Object? title = null,
    Object? artisName = null,
    Object? spotify = null,
    Object? itunes = null,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? pCopyright = null,
    Object? user = freezed,
    Object? isrc = null,
    Object? explisitLyric = null,
    Object? thisTrackIs = null,
    Object? previewsStartTime = null,
    Object? internalTrackId = null,
    Object? lyric = null,
    Object? status = null,
    Object? linkYt = null,
    Object? contributor = freezed,
    Object? publisher = freezed,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      langLyric: freezed == langLyric
          ? _value.langLyric
          : langLyric // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artisName: null == artisName
          ? _value.artisName
          : artisName // ignore: cast_nullable_to_non_nullable
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRes?,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as int,
      explisitLyric: null == explisitLyric
          ? _value.explisitLyric
          : explisitLyric // ignore: cast_nullable_to_non_nullable
              as int,
      thisTrackIs: null == thisTrackIs
          ? _value.thisTrackIs
          : thisTrackIs // ignore: cast_nullable_to_non_nullable
              as int,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      linkYt: null == linkYt
          ? _value.linkYt
          : linkYt // ignore: cast_nullable_to_non_nullable
              as String,
      contributor: freezed == contributor
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as ConstributorRes?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as PublisherRes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageResCopyWith<$Res>? get langLyric {
    if (_value.langLyric == null) {
      return null;
    }

    return $LanguageResCopyWith<$Res>(_value.langLyric!, (value) {
      return _then(_value.copyWith(langLyric: value) as $Val);
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
  $PublisherResCopyWith<$Res>? get publisher {
    if (_value.publisher == null) {
      return null;
    }

    return $PublisherResCopyWith<$Res>(_value.publisher!, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailsTrackResCopyWith<$Res>
    implements $DetailsTrackResCopyWith<$Res> {
  factory _$$_DetailsTrackResCopyWith(
          _$_DetailsTrackRes value, $Res Function(_$_DetailsTrackRes) then) =
      __$$_DetailsTrackResCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'cover', defaultValue: '') String cover,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'lang_lyric') LanguageRes? langLyric,
      @JsonKey(name: 'track_title', defaultValue: '') String title,
      @JsonKey(name: 'artis_name', defaultValue: '') String artisName,
      @JsonKey(name: 'spotify', defaultValue: '') String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') String itunes,
      @JsonKey(name: 'genre_1') GenreRes? genre1,
      @JsonKey(name: 'genre_2') GenreRes? genre2,
      @JsonKey(name: 'p_copyright', defaultValue: '') String pCopyright,
      @JsonKey(name: 'user') UserRes? user,
      @JsonKey(name: 'isrc', defaultValue: 0) int isrc,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0) int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0) int thisTrackIs,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
      int previewsStartTime,
      @JsonKey(name: 'internal_track_id', defaultValue: 0) int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '') String lyric,
      @JsonKey(name: 'status', defaultValue: 0) int status,
      @JsonKey(name: 'link_yt', defaultValue: '') String linkYt,
      @JsonKey(name: 'contributor') ConstributorRes? contributor,
      @JsonKey(name: 'publisher') PublisherRes? publisher});

  @override
  $LanguageResCopyWith<$Res>? get langLyric;
  @override
  $GenreResCopyWith<$Res>? get genre1;
  @override
  $GenreResCopyWith<$Res>? get genre2;
  @override
  $UserResCopyWith<$Res>? get user;
  @override
  $ConstributorResCopyWith<$Res>? get contributor;
  @override
  $PublisherResCopyWith<$Res>? get publisher;
}

/// @nodoc
class __$$_DetailsTrackResCopyWithImpl<$Res>
    extends _$DetailsTrackResCopyWithImpl<$Res, _$_DetailsTrackRes>
    implements _$$_DetailsTrackResCopyWith<$Res> {
  __$$_DetailsTrackResCopyWithImpl(
      _$_DetailsTrackRes _value, $Res Function(_$_DetailsTrackRes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cover = null,
    Object? image = null,
    Object? langLyric = freezed,
    Object? title = null,
    Object? artisName = null,
    Object? spotify = null,
    Object? itunes = null,
    Object? genre1 = freezed,
    Object? genre2 = freezed,
    Object? pCopyright = null,
    Object? user = freezed,
    Object? isrc = null,
    Object? explisitLyric = null,
    Object? thisTrackIs = null,
    Object? previewsStartTime = null,
    Object? internalTrackId = null,
    Object? lyric = null,
    Object? status = null,
    Object? linkYt = null,
    Object? contributor = freezed,
    Object? publisher = freezed,
  }) {
    return _then(_$_DetailsTrackRes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      langLyric: freezed == langLyric
          ? _value.langLyric
          : langLyric // ignore: cast_nullable_to_non_nullable
              as LanguageRes?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artisName: null == artisName
          ? _value.artisName
          : artisName // ignore: cast_nullable_to_non_nullable
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRes?,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as int,
      explisitLyric: null == explisitLyric
          ? _value.explisitLyric
          : explisitLyric // ignore: cast_nullable_to_non_nullable
              as int,
      thisTrackIs: null == thisTrackIs
          ? _value.thisTrackIs
          : thisTrackIs // ignore: cast_nullable_to_non_nullable
              as int,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      linkYt: null == linkYt
          ? _value.linkYt
          : linkYt // ignore: cast_nullable_to_non_nullable
              as String,
      contributor: freezed == contributor
          ? _value.contributor
          : contributor // ignore: cast_nullable_to_non_nullable
              as ConstributorRes?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as PublisherRes?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    anyMap: true, explicitToJson: true, checked: true, includeIfNull: false)
class _$_DetailsTrackRes extends _DetailsTrackRes {
  const _$_DetailsTrackRes(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'cover', defaultValue: '') required this.cover,
      @JsonKey(name: 'image', defaultValue: '') required this.image,
      @JsonKey(name: 'lang_lyric') this.langLyric,
      @JsonKey(name: 'track_title', defaultValue: '') required this.title,
      @JsonKey(name: 'artis_name', defaultValue: '') required this.artisName,
      @JsonKey(name: 'spotify', defaultValue: '') required this.spotify,
      @JsonKey(name: 'itunes', defaultValue: '') required this.itunes,
      @JsonKey(name: 'genre_1') this.genre1,
      @JsonKey(name: 'genre_2') this.genre2,
      @JsonKey(name: 'p_copyright', defaultValue: '') required this.pCopyright,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'isrc', defaultValue: 0) required this.isrc,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
      required this.explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
      required this.thisTrackIs,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
      required this.previewsStartTime,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
      required this.internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '') required this.lyric,
      @JsonKey(name: 'status', defaultValue: 0) required this.status,
      @JsonKey(name: 'link_yt', defaultValue: '') required this.linkYt,
      @JsonKey(name: 'contributor') this.contributor,
      @JsonKey(name: 'publisher') this.publisher})
      : super._();

  factory _$_DetailsTrackRes.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsTrackResFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  final String cover;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'lang_lyric')
  final LanguageRes? langLyric;
  @override
  @JsonKey(name: 'track_title', defaultValue: '')
  final String title;
  @override
  @JsonKey(name: 'artis_name', defaultValue: '')
  final String artisName;
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
  @JsonKey(name: 'user')
  final UserRes? user;
  @override
  @JsonKey(name: 'isrc', defaultValue: 0)
  final int isrc;
  @override
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  final int explisitLyric;
  @override
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  final int thisTrackIs;
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
  @JsonKey(name: 'status', defaultValue: 0)
  final int status;
  @override
  @JsonKey(name: 'link_yt', defaultValue: '')
  final String linkYt;
  @override
  @JsonKey(name: 'contributor')
  final ConstributorRes? contributor;
  @override
  @JsonKey(name: 'publisher')
  final PublisherRes? publisher;

  @override
  String toString() {
    return 'DetailsTrackRes(id: $id, cover: $cover, image: $image, langLyric: $langLyric, title: $title, artisName: $artisName, spotify: $spotify, itunes: $itunes, genre1: $genre1, genre2: $genre2, pCopyright: $pCopyright, user: $user, isrc: $isrc, explisitLyric: $explisitLyric, thisTrackIs: $thisTrackIs, previewsStartTime: $previewsStartTime, internalTrackId: $internalTrackId, lyric: $lyric, status: $status, linkYt: $linkYt, contributor: $contributor, publisher: $publisher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsTrackRes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.langLyric, langLyric) ||
                other.langLyric == langLyric) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artisName, artisName) ||
                other.artisName == artisName) &&
            (identical(other.spotify, spotify) || other.spotify == spotify) &&
            (identical(other.itunes, itunes) || other.itunes == itunes) &&
            (identical(other.genre1, genre1) || other.genre1 == genre1) &&
            (identical(other.genre2, genre2) || other.genre2 == genre2) &&
            (identical(other.pCopyright, pCopyright) ||
                other.pCopyright == pCopyright) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isrc, isrc) || other.isrc == isrc) &&
            (identical(other.explisitLyric, explisitLyric) ||
                other.explisitLyric == explisitLyric) &&
            (identical(other.thisTrackIs, thisTrackIs) ||
                other.thisTrackIs == thisTrackIs) &&
            (identical(other.previewsStartTime, previewsStartTime) ||
                other.previewsStartTime == previewsStartTime) &&
            (identical(other.internalTrackId, internalTrackId) ||
                other.internalTrackId == internalTrackId) &&
            (identical(other.lyric, lyric) || other.lyric == lyric) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.linkYt, linkYt) || other.linkYt == linkYt) &&
            (identical(other.contributor, contributor) ||
                other.contributor == contributor) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        cover,
        image,
        langLyric,
        title,
        artisName,
        spotify,
        itunes,
        genre1,
        genre2,
        pCopyright,
        user,
        isrc,
        explisitLyric,
        thisTrackIs,
        previewsStartTime,
        internalTrackId,
        lyric,
        status,
        linkYt,
        contributor,
        publisher
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsTrackResCopyWith<_$_DetailsTrackRes> get copyWith =>
      __$$_DetailsTrackResCopyWithImpl<_$_DetailsTrackRes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsTrackResToJson(
      this,
    );
  }
}

abstract class _DetailsTrackRes extends DetailsTrackRes {
  const factory _DetailsTrackRes(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'cover', defaultValue: '') required final String cover,
      @JsonKey(name: 'image', defaultValue: '') required final String image,
      @JsonKey(name: 'lang_lyric') final LanguageRes? langLyric,
      @JsonKey(name: 'track_title', defaultValue: '')
      required final String title,
      @JsonKey(name: 'artis_name', defaultValue: '')
      required final String artisName,
      @JsonKey(name: 'spotify', defaultValue: '') required final String spotify,
      @JsonKey(name: 'itunes', defaultValue: '') required final String itunes,
      @JsonKey(name: 'genre_1') final GenreRes? genre1,
      @JsonKey(name: 'genre_2') final GenreRes? genre2,
      @JsonKey(name: 'p_copyright', defaultValue: '')
      required final String pCopyright,
      @JsonKey(name: 'user') final UserRes? user,
      @JsonKey(name: 'isrc', defaultValue: 0) required final int isrc,
      @JsonKey(name: 'explisit_lyric', defaultValue: 0)
      required final int explisitLyric,
      @JsonKey(name: 'this_track_is', defaultValue: 0)
      required final int thisTrackIs,
      @JsonKey(name: 'previews_start_time', defaultValue: 0)
      required final int previewsStartTime,
      @JsonKey(name: 'internal_track_id', defaultValue: 0)
      required final int internalTrackId,
      @JsonKey(name: 'lyric', defaultValue: '') required final String lyric,
      @JsonKey(name: 'status', defaultValue: 0) required final int status,
      @JsonKey(name: 'link_yt', defaultValue: '') required final String linkYt,
      @JsonKey(name: 'contributor') final ConstributorRes? contributor,
      @JsonKey(name: 'publisher')
      final PublisherRes? publisher}) = _$_DetailsTrackRes;
  const _DetailsTrackRes._() : super._();

  factory _DetailsTrackRes.fromJson(Map<String, dynamic> json) =
      _$_DetailsTrackRes.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'cover', defaultValue: '')
  String get cover;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'lang_lyric')
  LanguageRes? get langLyric;
  @override
  @JsonKey(name: 'track_title', defaultValue: '')
  String get title;
  @override
  @JsonKey(name: 'artis_name', defaultValue: '')
  String get artisName;
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
  @JsonKey(name: 'user')
  UserRes? get user;
  @override
  @JsonKey(name: 'isrc', defaultValue: 0)
  int get isrc;
  @override
  @JsonKey(name: 'explisit_lyric', defaultValue: 0)
  int get explisitLyric;
  @override
  @JsonKey(name: 'this_track_is', defaultValue: 0)
  int get thisTrackIs;
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
  @JsonKey(name: 'status', defaultValue: 0)
  int get status;
  @override
  @JsonKey(name: 'link_yt', defaultValue: '')
  String get linkYt;
  @override
  @JsonKey(name: 'contributor')
  ConstributorRes? get contributor;
  @override
  @JsonKey(name: 'publisher')
  PublisherRes? get publisher;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsTrackResCopyWith<_$_DetailsTrackRes> get copyWith =>
      throw _privateConstructorUsedError;
}
