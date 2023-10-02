import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/pages/provider/data_album_video_audio.dart';
import 'package:yboxv2/pages/provider/data_track_state.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class UtilsValidationForm {
  static Future<FormData?> cekValidasiAlbumOrVideo({
    required DataAlbumAudioVideoState data,
    required bool isEdit,
  }) async {
    debugPrint('coverImage :  ${data.coverImage.path}');
    if (!isEdit && data.coverImage.path.isEmpty) {
      UtilsLoading.showInfo(message: 'Gambar tidak boleh kosong');
      return null;
    } else if (!isEdit && data.audio.path == null) {
      UtilsLoading.showInfo(message: 'Audio tidak boleh kosong');
      return null;
    } else if (data.languageId.isEmpty) {
      UtilsLoading.showInfo(message: 'Bahasa tidak boleh kosong');
      return null;
    } else {
      if (!isEdit) {
        var formData = FormData.fromMap(
          {
            "cover_albums": await MultipartFile.fromFile(
              data.coverImage.path,
              filename: data.coverImage.path.split('/').last,
            ),
            "lang": data.languageId,
            "release_title": data.releaseTitle,
            "title_version": data.titleVersion,
            "artis": data.artist,
            "spotify": data.spotify,
            "itunes": data.itunes,
            "genre": data.genre,
            "genre2": data.genre2,
            "p_copy": data.pCopy,
            "c_copy": data.cCopy,
            "release": data.release,
            "release_id": data.releaseId,
            "upc": data.upc,
            "file_track": await MultipartFile.fromFile(
              data.audio.path ?? '',
              filename: data.audio.path,
            ),
            "lang_track": data.languageTrackId,
            "track_title": data.trackTitle,
            "title_version_track": data.titleVersionTrack,
            "artis_track": data.artistTrack,
            "spotify_track": data.spotifyTrack,
            "itunes_track": data.itunesTrack,
            "isrc": data.isrc,
            "rdolyrics": data.rdolyrics,
            "rdothis_track": data.rdothisTrack,
            "genre_info": data.genreInfo,
            "genre2_info": data.genre2Info,
            "p_copy_info": data.pCopyInfo,
            "start_time": data.startTime,
            "track_ID_info": data.trackIdInfo,
            "lirik": data.lirik,
            "con_name": data.conName,
            "role_track": data.roleTrack,
            "share": data.share,
            "publishing": data.publishing,
          },
        );
        return formData;
      } else {
        var formData = FormData.fromMap(
          {
            "_method": 'PUT',
            "cover_albums": (data.coverImage.path.isEmpty)
                ? null
                : await MultipartFile.fromFile(
                    data.coverImage.path,
                    filename: data.coverImage.path.split('/').last,
                  ),
            "lang": data.languageId,
            "release_title": data.releaseTitle,
            "title_version": data.titleVersion,
            "artis": data.artist,
            "spotify": data.spotify,
            "itunes": data.itunes,
            "genre": data.genre,
            "genre2": data.genre2,
            "p_copy": data.pCopy,
            "c_copy": data.cCopy,
            "release": data.release,
            "release_id": data.releaseId,
            "upc": data.upc,
            "file_track": ((data.audio.path ?? '').isEmpty)
                ? null
                : await MultipartFile.fromFile(
                    data.audio.path ?? '',
                    filename: data.audio.path,
                  ),
            "lang_track": data.languageTrackId,
            "track_title": data.trackTitle,
            "title_version_track": data.titleVersionTrack,
            "artis_track": data.artistTrack,
            "spotify_track": data.spotifyTrack,
            "itunes_track": data.itunesTrack,
            "isrc": data.isrc,
            "rdolyrics": data.rdolyrics,
            "rdothis_track": data.rdothisTrack,
            "genre_info": data.genreInfo,
            "genre2_info": data.genre2Info,
            "p_copy_info": data.pCopyInfo,
            "start_time": data.startTime,
            "track_ID_info": data.trackIdInfo,
            "lirik": data.lirik,
            "con_name": data.conName,
            "role_track": data.roleTrack,
            "share": data.share,
            "publishing": data.publishing,
          },
        );

        return formData;
      }
    }
  }

  static Future<FormData?> cekValidasiTrack({
    required DataTrackState data,
    required bool isEdit,
  }) async {
    debugPrint('coverImage :  ${data.coverImage.path}');
    if (!isEdit && data.coverImage.path.isEmpty) {
      UtilsLoading.showInfo(message: 'Gambar tidak boleh kosong');
      return null;
    } else if (!isEdit && data.audio.path == null) {
      UtilsLoading.showInfo(message: 'Audio tidak boleh kosong');
      return null;
    } else if (data.languageTrackId.isEmpty) {
      UtilsLoading.showInfo(message: 'Bahasa tidak boleh kosong');
      return null;
    } else {
      if (!isEdit) {
        var formData = FormData.fromMap(
          {
            "cover_albums": await MultipartFile.fromFile(
              data.coverImage.path,
              filename: data.coverImage.path.split('/').last,
            ),
            "file_track": await MultipartFile.fromFile(
              data.audio.path ?? '',
              filename: data.audio.path,
            ),
            "track_title": data.trackTitle,
            "lang_track": data.languageTrackId,
            "title_version_track": data.titleVersionTrack,
            "artis_track": data.artistTrack,
            "spotify_track": data.spotifyTrack,
            "itunes_track": data.itunesTrack,
            "rdolyrics": data.rdolyrics,
            "isrc": data.isrc,
            "rdothis_track": data.rdothisTrack,
            "genre_info": data.genreInfo,
            "genre2_info": data.genre2Info,
            "p_copy_info": data.pCopyInfo,
            "start_time": data.startTime,
            "track_ID_info": data.trackIdInfo,
            "lirik": data.lirik,
            "con_name": data.conName,
            "role_track": data.roleTrack,
            "share": data.share,
            "publishing": data.publishing,
          },
        );
        return formData;
      } else {
        var formData = FormData.fromMap(
          {
            "_method": 'PUT',
            "cover_albums": (data.coverImage.path.isEmpty)
                ? null
                : await MultipartFile.fromFile(
                    data.coverImage.path,
                    filename: data.coverImage.path.split('/').last,
                  ),
            "file_track": ((data.audio.path ?? '').isEmpty)
                ? null
                : await MultipartFile.fromFile(
                    data.audio.path ?? '',
                    filename: data.audio.path,
                  ),
            "track_title": data.trackTitle,
            "lang_track": data.languageTrackId,
            "title_version_track": data.titleVersionTrack,
            "artis_track": data.artistTrack,
            "spotify_track": data.spotifyTrack,
            "itunes_track": data.itunesTrack,
            "rdolyrics": data.rdolyrics,
            "isrc": data.isrc,
            "rdothis_track": data.rdothisTrack,
            "genre_info": data.genreInfo,
            "genre2_info": data.genre2Info,
            "p_copy_info": data.pCopyInfo,
            "start_time": data.startTime,
            "track_ID_info": data.trackIdInfo,
            "lirik": data.lirik,
            "con_name": data.conName,
            "role_track": data.roleTrack,
            "share": data.share,
            "publishing": data.publishing,
          },
        );

        return formData;
      }
    }
  }
}
