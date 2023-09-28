import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

part 'data_album_state.dart';

class DataAlbum extends ChangeNotifier {
  DataAlbumState _state = DataAlbumState.initial();
  DataAlbumState get state => _state;

  void updateCoverImage(File coverImage) {
    _state = _state.copyWith(coverImage: coverImage);
    notifyListeners();

    debugPrint('coverImage : ${_state.coverImage.path}');
  }

  void updateLanguageId(String languageId) {
    _state = _state.copyWith(languageId: languageId);
    notifyListeners();

    debugPrint('coverImage : ${_state.languageId}');
  }

  void updateReleaseTitle(String releaseTitle) {
    _state = _state.copyWith(releaseTitle: releaseTitle);
    notifyListeners();
  }

  void updateTitleVersion(String titleVersion) {
    _state = _state.copyWith(titleVersion: titleVersion);
    notifyListeners();
  }

  void updateArtist(String artist) {
    _state = _state.copyWith(artist: artist);
    notifyListeners();
  }

  void updateSpotify(String spotify) {
    _state = _state.copyWith(spotify: spotify);
    notifyListeners();
  }

  void updateItunes(String itunes) {
    _state = _state.copyWith(itunes: itunes);
    notifyListeners();
  }

  void updateGenre(String genre) {
    _state = _state.copyWith(genre: genre);
    notifyListeners();
  }

  void updateGenre2(String genre2) {
    _state = _state.copyWith(genre2: genre2);
    notifyListeners();
  }

  void updatePCopy(String pCopy) {
    _state = _state.copyWith(pCopy: pCopy);
    notifyListeners();
  }

  void updateCCopy(String cCopy) {
    _state = _state.copyWith(cCopy: cCopy);
    notifyListeners();
  }

  void updateRelease(String release) {
    _state = _state.copyWith(release: release);
    notifyListeners();
  }

  void updateLabel(String label) {
    _state = _state.copyWith(label: label);
    notifyListeners();
  }

  void updateReleaseId(String releaseId) {
    _state = _state.copyWith(releaseId: releaseId);
    notifyListeners();
  }

  void updateUpc(String upc) {
    _state = _state.copyWith(upc: upc);
    notifyListeners();
  }

  void updateAudio(PlatformFile audio) {
    _state = _state.copyWith(audio: audio);
    notifyListeners();
  }

  void updateLanguageTrackId(String languageTrackId) {
    _state = _state.copyWith(languageTrackId: languageTrackId);
    notifyListeners();
  }

  void updateTrackTitle(String trackTitle) {
    _state = _state.copyWith(trackTitle: trackTitle);
    notifyListeners();
  }

  void updateTitleVersionTrack(String titleVersionTrack) {
    _state = _state.copyWith(titleVersionTrack: titleVersionTrack);
    notifyListeners();
  }

  void updateArtistTrack(String artistTrack) {
    _state = _state.copyWith(artistTrack: artistTrack);
    notifyListeners();
  }

  void updateSpotifyTrack(String spotifyTrack) {
    _state = _state.copyWith(spotifyTrack: spotifyTrack);
    notifyListeners();
  }

  void updateItunesTrack(String itunesTrack) {
    _state = _state.copyWith(itunesTrack: itunesTrack);
    notifyListeners();
  }

  void updateIsrc(String isrc) {
    _state = _state.copyWith(isrc: isrc);
    notifyListeners();
  }

  void updateRdolyrics(String rdolyrics) {
    _state = _state.copyWith(rdolyrics: rdolyrics);
    notifyListeners();
  }

  void updateRdothisTracks(String rdothisTrack) {
    _state = _state.copyWith(rdothisTrack: rdothisTrack);
    notifyListeners();
  }

  void updateGenreInfo(String genreInfo) {
    _state = _state.copyWith(genreInfo: genreInfo);
    notifyListeners();
  }

  void updateGenre2Info(String genre2Info) {
    _state = _state.copyWith(genre2Info: genre2Info);
    notifyListeners();
  }

  void updatePCopyInfo(String pCopyInfo) {
    _state = _state.copyWith(pCopyInfo: pCopyInfo);
    notifyListeners();
  }

  void updateStartTime(String startTime) {
    _state = _state.copyWith(startTime: startTime);
    notifyListeners();
  }

  void updateLabelInfo(String labelInfo) {
    _state = _state.copyWith(labelInfo: labelInfo);
    notifyListeners();
  }

  void updateTrackIdInfo(String trackIdInfo) {
    _state = _state.copyWith(trackIdInfo: trackIdInfo);
    notifyListeners();
  }

  void updateLirik(String lirik) {
    _state = _state.copyWith(lirik: lirik);
    notifyListeners();
  }

  void updateConName(String conName) {
    _state = _state.copyWith(conName: conName);
    notifyListeners();
  }

  void updateRoleTrack(String roleTrack) {
    _state = _state.copyWith(roleTrack: roleTrack);
    notifyListeners();
  }

  void updateShare(String share) {
    _state = _state.copyWith(share: share);
    notifyListeners();
  }

  void updatePublishing(String publishing) {
    _state = _state.copyWith(publishing: publishing);
    notifyListeners();
  }
}
