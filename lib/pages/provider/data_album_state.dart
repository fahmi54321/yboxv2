// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'data_album.dart';

class DataAlbumState extends Equatable {
  final File coverImage;
  final String languageId;
  final String releaseTitle;
  final String titleVersion;
  final String artist;
  final String spotify;
  final String itunes;
  final String genre;
  final String genre2;
  final String pCopy;
  final String cCopy;
  final String release;
  final String label;
  final String releaseId;
  final String upc;
  final PlatformFile audio;
  final String languageTrackId;
  final String trackTitle;
  final String titleVersionTrack;
  final String artistTrack;
  final String spotifyTrack;
  final String itunesTrack;
  final String isrc;
  final String rdolyrics;
  final String rdothisTrack;
  final String genreInfo;
  final String genre2Info;
  final String pCopyInfo;
  final String startTime;
  final String labelInfo;
  final String trackIdInfo;
  final String lirik;
  final String conName;
  final String roleTrack;
  final String share;
  final String publishing;
  const DataAlbumState({
    required this.coverImage,
    required this.languageId,
    required this.releaseTitle,
    required this.titleVersion,
    required this.artist,
    required this.spotify,
    required this.itunes,
    required this.genre,
    required this.genre2,
    required this.pCopy,
    required this.cCopy,
    required this.release,
    required this.label,
    required this.releaseId,
    required this.upc,
    required this.audio,
    required this.languageTrackId,
    required this.trackTitle,
    required this.titleVersionTrack,
    required this.artistTrack,
    required this.spotifyTrack,
    required this.itunesTrack,
    required this.isrc,
    required this.rdolyrics,
    required this.rdothisTrack,
    required this.genreInfo,
    required this.genre2Info,
    required this.pCopyInfo,
    required this.startTime,
    required this.labelInfo,
    required this.trackIdInfo,
    required this.lirik,
    required this.conName,
    required this.roleTrack,
    required this.share,
    required this.publishing,
  });

  factory DataAlbumState.initial() {
    return DataAlbumState(
      coverImage: File(''),
      languageId: '',
      releaseTitle: '',
      titleVersion: '',
      artist: '',
      spotify: '',
      itunes: '',
      genre: '',
      genre2: '',
      pCopy: '',
      cCopy: '',
      release: '',
      label: '',
      releaseId: '',
      upc: '',
      audio: PlatformFile(name: '', size: 0),
      languageTrackId: '',
      trackTitle: '',
      titleVersionTrack: '',
      artistTrack: '',
      spotifyTrack: '',
      itunesTrack: '',
      isrc: '',
      rdolyrics: '',
      rdothisTrack: '',
      genreInfo: '',
      genre2Info: '',
      pCopyInfo: '',
      startTime: '',
      labelInfo: '',
      trackIdInfo: '',
      lirik: '',
      conName: '',
      roleTrack: '',
      share: '',
      publishing: '',
    );
  }

  DataAlbumState copyWith({
    File? coverImage,
    String? languageId,
    String? releaseTitle,
    String? titleVersion,
    String? artist,
    String? spotify,
    String? itunes,
    String? genre,
    String? genre2,
    String? pCopy,
    String? cCopy,
    String? release,
    String? label,
    String? releaseId,
    String? upc,
    PlatformFile? audio,
    String? languageTrackId,
    String? trackTitle,
    String? titleVersionTrack,
    String? artistTrack,
    String? spotifyTrack,
    String? itunesTrack,
    String? isrc,
    String? rdolyrics,
    String? rdothisTrack,
    String? genreInfo,
    String? genre2Info,
    String? pCopyInfo,
    String? startTime,
    String? labelInfo,
    String? trackIdInfo,
    String? lirik,
    String? conName,
    String? roleTrack,
    String? share,
    String? publishing,
  }) {
    return DataAlbumState(
      coverImage: coverImage ?? this.coverImage,
      languageId: languageId ?? this.languageId,
      releaseTitle: releaseTitle ?? this.releaseTitle,
      titleVersion: titleVersion ?? this.titleVersion,
      artist: artist ?? this.artist,
      spotify: spotify ?? this.spotify,
      itunes: itunes ?? this.itunes,
      genre: genre ?? this.genre,
      genre2: genre2 ?? this.genre2,
      pCopy: pCopy ?? this.pCopy,
      cCopy: cCopy ?? this.cCopy,
      release: release ?? this.release,
      label: label ?? this.label,
      releaseId: releaseId ?? this.releaseId,
      upc: upc ?? this.upc,
      audio: audio ?? this.audio,
      languageTrackId: languageTrackId ?? this.languageTrackId,
      trackTitle: trackTitle ?? this.trackTitle,
      titleVersionTrack: titleVersionTrack ?? this.titleVersionTrack,
      artistTrack: artistTrack ?? this.artistTrack,
      spotifyTrack: spotifyTrack ?? this.spotifyTrack,
      itunesTrack: itunesTrack ?? this.itunesTrack,
      isrc: isrc ?? this.isrc,
      rdolyrics: rdolyrics ?? this.rdolyrics,
      rdothisTrack: rdothisTrack ?? this.rdothisTrack,
      genreInfo: genreInfo ?? this.genreInfo,
      genre2Info: genre2Info ?? this.genre2Info,
      pCopyInfo: pCopyInfo ?? this.pCopyInfo,
      startTime: startTime ?? this.startTime,
      labelInfo: labelInfo ?? this.labelInfo,
      trackIdInfo: trackIdInfo ?? this.trackIdInfo,
      lirik: lirik ?? this.lirik,
      conName: conName ?? this.conName,
      roleTrack: roleTrack ?? this.roleTrack,
      share: share ?? this.share,
      publishing: publishing ?? this.publishing,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      coverImage,
      languageId,
      releaseTitle,
      titleVersion,
      artist,
      spotify,
      itunes,
      genre,
      genre2,
      pCopy,
      cCopy,
      release,
      label,
      releaseId,
      upc,
      audio,
      languageTrackId,
      trackTitle,
      titleVersionTrack,
      artistTrack,
      spotifyTrack,
      itunesTrack,
      isrc,
      rdolyrics,
      rdothisTrack,
      genreInfo,
      genre2Info,
      pCopyInfo,
      startTime,
      labelInfo,
      trackIdInfo,
      lirik,
      conName,
      roleTrack,
      share,
      publishing,
    ];
  }
}
