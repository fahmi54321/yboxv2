import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/label_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/general/publishing_res.dart';
import 'package:yboxv2/models/general/roles_res.dart';
import 'package:yboxv2/models/track/details_track_res.dart';
import 'package:yboxv2/network/http_list.dart';
import 'package:yboxv2/network/http_track.dart';
import 'package:yboxv2/pages/forms/publishing_form_2.dart';
import 'package:yboxv2/pages/forms/track_form_2.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/widget/v_text.dart';

class TrackFormState extends ChangeNotifier {
  BuildContext context;

  File? coverImage;
  PlatformFile? audio;
  String fileNameImage = '';
  String fileNameAudio = '';
  String sizeImage = '';
  String sizeAudio = '';
  int currentStep = 0;
  bool isCompleted = false;
  bool isLoadingLanguage = false;
  bool isLoadingGenre = false;
  bool isLoadingLabel = false;
  bool isLoadingRole = false;
  bool isLoadingPublishing = false;
  List<String> rulesOfImage = [
    'File format: PNG, GIF, BMP, TIF, JPG or JPEG.',
    'Color space: RGB.',
    'Minimum dimensions: 1400x1400 pixels, but recommend 3000x3000 pixels',
    'Square image: width and height must be the same.',
    'Images may not contain more than 50 megapixels or be larger than 10 Mb.',
    'Your image cannot be stretched, upscaled, or appear to be low-resolution.',
    'The information on your cover art must match your album title and artist name.',
    'Website addresses, social media links and contact information are not permitted on album artwork.',
    'Your cover art may not include sexually explicit imagery.',
    'Your cover art cannot be misleading by figuring another artists name more prominently than yours.',
    'You may not use a third-party logo or trademark without the express written permission from the trademark holder.',
  ];

  List<LanguageRes> listLanguage = [];
  List<GenreRes> listGenre = [];
  List<LabelRes> listLabel = [];
  List<RolesRes> listRole = [];
  List<PublishingRes> listPublishing = [];

  TextEditingController inputRecordLabel = TextEditingController();
  TextEditingController inputPrevReleased = TextEditingController();
  TextEditingController inputLabelName = TextEditingController();
  TextEditingController inputReleaseId = TextEditingController();
  TextEditingController inputUpc = TextEditingController();
  int yesInputPrevRelease = 1;
  int yesInputLabel = 1;
  int yesInputUPC = 1;
  int noInputPrevRelease = 0;
  int noInputLabel = 0;
  int noInputUPC = 0;
  int selectInputPrevRelease = 0;
  int selectInputLabel = 0;
  int selectInputUPC = 0;

  //tracks
  GenreRes? genreRes1Tracks;
  GenreRes? genreRes2Tracks;
  String languageTracks = 'Select language';
  LanguageRes? languageResTrack;

  //title
  TextEditingController tracksInputTitleRelease = TextEditingController();
  TextEditingController tracksInputTitleVersion = TextEditingController();

  //artist
  TextEditingController tracksInputArtist = TextEditingController();
  int tracksYesInputArtistSpotify = 1;
  int tracksYesInputArtistApple = 1;
  int tracksNoInputArtistSpotify = 0;
  int tracksNoInputArtistApple = 0;
  int tracksSelectInputArtistSpotify = 0;
  int tracksSelectInputArtistApple = 0;
  TextEditingController tracksInputArtistSpotify = TextEditingController();
  TextEditingController tracksInputArtistApple = TextEditingController();

  // additional info
  int tracksYesInputIsrcCode = 1;
  int tracksPublicSong = 1;
  int tracksYesInputExplicitLyrics = 1;
  int tracksNoInputIsrcCode = 0;
  int tracksOriginSong = 0;
  int tracksNoInputExplicitLyrics = 0;
  int tracksSelectInputIsrcCode = 0;
  int tracksSelectInputExplicitLyrics = 0;
  int tracksSelectInputTrackSong = 0;
  TextEditingController tracksInputIsrcCode = TextEditingController();
  TextEditingController tracksInputExplicitLyrics = TextEditingController();
  String tracksGenre1 = 'Select genre';
  String tracksGenre2 = 'Select genre';
  LabelRes? tracksLabel;
  TextEditingController tracksInputCopyrightP = TextEditingController();
  TextEditingController tracksInputCopyrightC = TextEditingController();
  TextEditingController tracksInputInternalTracksId = TextEditingController();
  TextEditingController tracksInputLyrics = TextEditingController();

  //publishing
  String pubRole = 'Select role';
  RolesRes? pubRoles;
  String pubPublishing = 'Select publishing';
  PublishingRes? pubPublishings;
  TextEditingController tracksInputContributorName = TextEditingController();
  TextEditingController tracksInputShare = TextEditingController();

  bool isLoading = false;

  // edit
  DetailsTrackRes? dataTrackRes;
  String coverImageEdit = '';
  File? coverImageFile;
  String audioEdit = '';
  bool isEdit = false;
  bool isLoadingSaveOrEdit = false;
  bool isLoadingList = false;

  TrackFormState({
    required this.context,
    this.dataTrackRes,
  }) {
    initEditTrack();
    init();
  }

  init() async {
    isLoadingList = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    await getLanguage();
    await getGenre();
    await getRoles();
    await getPublishing();

    UtilsLoading.dismiss();

    isLoadingList = false;
    notifyListeners();
  }

  List<Step> listSteps() {
    return [
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: vText(
          'Tracks',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: TrackForm2(
          genreRes1Tracks: genreRes1Tracks,
          genreRes2Tracks: genreRes2Tracks,
          languageResTrack: languageResTrack,
          listGenre: listGenre,
          listLanguage: listLanguage,
          state: this,
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: vText(
          'Publishing',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: PublishingForm2(
          pubRoles: pubRoles,
          pubPublishings: pubPublishings,
          listPublishing: listPublishing,
          listRole: listRole,
          state: this,
        ),
      ),
    ];
  }

  initEditTrack() {
    if (dataTrackRes != null) {
      isEdit = true;

      // main
      coverImageEdit = dataTrackRes?.image ?? '';

      //tracks
      audioEdit = dataTrackRes?.cover ?? '';
      tracksInputInternalTracksId.text =
          dataTrackRes?.internalTrackId.toString() ?? '';
      tracksInputTitleRelease.text = dataTrackRes?.title ?? '';
      // tracksInputTitleVersion.text = dataTrackRes?.trackVersion ?? '';
      tracksInputArtist.text = dataTrackRes?.artisName ?? '';

      if ((dataTrackRes?.spotify ?? '').isNotEmpty) {
        tracksInputArtistSpotify.text = dataTrackRes?.spotify ?? '';
        tracksYesInputArtistSpotify = 1;
        tracksSelectInputArtistSpotify = 1;
      } else {
        tracksNoInputArtistSpotify = 0;
        tracksSelectInputArtistSpotify = 0;
      }

      if ((dataTrackRes?.itunes ?? '').isNotEmpty) {
        tracksInputArtistApple.text = dataTrackRes?.itunes ?? '';
        tracksYesInputArtistApple = 1;
        tracksSelectInputArtistApple = 1;
      } else {
        tracksNoInputArtistApple = 0;
        tracksSelectInputArtistApple = 0;
      }

      if (dataTrackRes?.isrc != 0) {
        tracksInputIsrcCode.text = dataTrackRes?.isrc.toString() ?? '';
        tracksYesInputIsrcCode = 1;
        tracksSelectInputIsrcCode = 1;
      } else {
        tracksNoInputIsrcCode = 0;
        tracksSelectInputIsrcCode = 0;
      }

      if (dataTrackRes?.explisitLyric != 0) {
        tracksInputExplicitLyrics.text =
            dataTrackRes?.explisitLyric.toString() ?? '';
        tracksYesInputExplicitLyrics = 1;
        tracksSelectInputExplicitLyrics = 1;
      } else {
        tracksNoInputExplicitLyrics = 0;
        tracksSelectInputExplicitLyrics = 0;
      }

      if (dataTrackRes?.thisTrackIs == 0) {
        tracksOriginSong = 0;
        tracksSelectInputTrackSong = 0;
      } else {
        tracksPublicSong = 1;
        tracksSelectInputTrackSong = 1;
      }

      tracksInputCopyrightP.text = dataTrackRes?.pCopyright ?? "";
      tracksInputCopyrightC.text =
          dataTrackRes?.previewsStartTime.toString() ?? '';
      tracksInputLyrics.text = dataTrackRes?.lyric ?? '';

      //publishing

      tracksInputContributorName.text = dataTrackRes?.contributor?.name ?? '';
      tracksInputShare.text = dataTrackRes?.contributor?.share.toString() ?? '';

      notifyListeners();
    }
  }

  Future<void> getLanguage() async {
    final resStep1 = await HTTPListService().getLanguage();

    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listLanguage = cat;
        notifyListeners();

        if (dataTrackRes != null) {
          // edit
          if (dataTrackRes?.langLyric != null) {
            languageResTrack = LanguageRes(
              id: dataTrackRes?.langLyric?.id ?? 0,
              name: dataTrackRes?.langLyric?.name ?? '',
            );
            notifyListeners();
          } else {
            languageResTrack = cat[0];
            notifyListeners();
          }
        } else {
          languageResTrack = cat[0];
          notifyListeners();
        }
      },
    );
  }

  Future<void> getGenre() async {
    final resStep1 = await HTTPListService().getGenre();
    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listGenre = cat;
        notifyListeners();

        if (dataTrackRes != null) {
          if (dataTrackRes?.genre1 != null) {
            genreRes1Tracks = GenreRes(
              id: dataTrackRes?.genre1?.id ?? 0,
              name: dataTrackRes?.genre1?.name ?? '',
            );
            notifyListeners();
          } else {
            genreRes1Tracks = cat[0];
            notifyListeners();
          }

          if (dataTrackRes?.genre2 != null) {
            genreRes2Tracks = GenreRes(
              id: dataTrackRes?.genre2?.id ?? 0,
              name: dataTrackRes?.genre2?.name ?? '',
            );
            notifyListeners();
          } else {
            genreRes2Tracks = cat[0];
            notifyListeners();
          }
        } else {
          genreRes1Tracks = cat[0];
          genreRes2Tracks = cat[0];
          notifyListeners();
        }
      },
    );
  }

  Future<void> getRoles() async {
    final resStep1 = await HTTPListService().getRoles();

    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listRole = cat;
        notifyListeners();

        if (dataTrackRes?.contributor?.roleTrack != null) {
          pubRoles = dataTrackRes?.contributor?.roleTrack;
          notifyListeners();
        } else {
          pubRoles = cat[0];
          notifyListeners();
        }
      },
    );
  }

  Future<void> getPublishing() async {
    final resStep1 = await HTTPListService().getPublishing();

    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listPublishing = cat;
        notifyListeners();

        if (dataTrackRes?.contributor?.publising != null) {
          pubPublishings = dataTrackRes?.contributor?.publising;
          notifyListeners();
        } else {
          pubPublishings = cat[0];
          notifyListeners();
        }
      },
    );
  }

  Future<void> saveTrack(FormData formData) async {
    isLoadingSaveOrEdit = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPTrackService().uploadTrack(data: formData);

    resStep1.fold(
      (e) async {
        isLoadingSaveOrEdit = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        isLoadingSaveOrEdit = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showSuccess(message: 'Berhasil disimpan');

        Future.delayed(const Duration(seconds: 1), () {
          Navigator.of(context).pop(true);
        });
      },
    );
  }

  Future<void> editTrack(FormData formData) async {
    isLoadingSaveOrEdit = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPTrackService().editTrack(
      id: dataTrackRes?.id ?? '',
      data: formData,
    );

    resStep1.fold(
      (e) async {
        isLoadingSaveOrEdit = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        isLoadingSaveOrEdit = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showSuccess(message: 'Berhasil disimpan');

        Future.delayed(const Duration(seconds: 1), () {
          Navigator.of(context).pop(true);
        });
      },
    );
  }

  String setTextButton({
    required bool isLastStep,
  }) {
    if (isLastStep == true) {
      if (dataTrackRes != null) {
        return 'Edit';
      } else {
        return 'Simpan';
      }
    } else {
      return 'Selanjutnya';
    }
  }
}
