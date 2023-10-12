import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:yboxv2/models/album/album_res.dart';
import 'package:yboxv2/models/album/details_album_res.dart';
import 'package:yboxv2/models/audio/audio_res.dart';
import 'package:yboxv2/models/audio/details_audio_res.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/general/publishing_res.dart';
import 'package:yboxv2/models/general/roles_res.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/models/video/details_video_res.dart';
import 'package:yboxv2/models/video/video_res.dart';
import 'package:yboxv2/network/http_album.dart';
import 'package:yboxv2/network/http_audio.dart';
import 'package:yboxv2/network/http_list.dart';
import 'package:yboxv2/network/http_video.dart';
import 'package:yboxv2/pages/forms/main_form.dart';
import 'package:yboxv2/pages/forms/publishing_form.dart';
import 'package:yboxv2/pages/forms/track_form.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/widget/v_text.dart';
import 'package:flutter/material.dart';

class FormAlbumAudioVideoState extends ChangeNotifier {
  final BuildContext context;
  final String fromCode;

  int currentStep = 0;

  bool isLoadingList = false;
  bool isLoadingSaveOrEdit = false;
  bool isEdit = false;
  bool isSuksesAdd = false;

  LanguageRes? languageResMain;
  LanguageRes? languageResTrack;
  GenreRes? genreRes1Main;
  GenreRes? genreRes2Main;
  GenreRes? genreRes1Tracks;
  GenreRes? genreRes2Tracks;
  RolesRes? pubRoles;
  PublishingRes? pubPublishings;
  LeaderRes mainLabel = const LeaderRes(
    id: '',
    name: '',
    image: '',
  );
  LeaderRes trackLabel = const LeaderRes(
    id: '',
    name: '',
    image: '',
  );

  List<LanguageRes> listLanguage = [];
  List<GenreRes> listGenre = [];
  List<RolesRes> listRole = [];
  List<PublishingRes> listPublishing = [];

  // main
  int selectInputPrevRelease = 0;
  int yesInputPrevRelease = 1;
  int selectInputLabel = 0;
  int yesInputLabel = 1;
  int selectInputUPC = 0;
  int yesInputUPC = 1;
  int noInputLabel = 0;
  int noInputPrevRelease = 0;
  int noInputUPC = 0;

  File? coverImageFile;

  //title
  TextEditingController inputTitleRelease = TextEditingController();
  TextEditingController inputTitleVersion = TextEditingController();

  //artist
  TextEditingController inputArtist = TextEditingController();
  int yesInputArtistSpotify = 1;
  int yesInputArtistApple = 1;
  int noInputArtistSpotify = 0;
  int noInputArtistApple = 0;
  int selectInputArtistSpotify = 0;
  int selectInputArtistApple = 0;
  TextEditingController inputArtistSpotify = TextEditingController();
  TextEditingController inputArtistApple = TextEditingController();

  // info
  TextEditingController inputCopyrightP = TextEditingController();
  TextEditingController inputCopyrightC = TextEditingController();
  TextEditingController inputPrevReleased = TextEditingController();
  TextEditingController inputReleaseId = TextEditingController();
  TextEditingController inputUpc = TextEditingController();

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

  //track
  // audio
  PlatformFile? audio;
  String? fileNameAudio;
  String? sizeAudio;

  // title
  TextEditingController tracksInputTitleRelease = TextEditingController();
  TextEditingController tracksInputTitleVersion = TextEditingController();

  // artist
  TextEditingController tracksInputArtist = TextEditingController();
  int tracksYesInputArtistSpotify = 1;
  int tracksYesInputArtistApple = 1;
  int tracksNoInputArtistSpotify = 0;
  int tracksNoInputArtistApple = 0;
  int tracksSelectInputArtistSpotify = 0;
  int tracksSelectInputArtistApple = 0;
  TextEditingController tracksInputArtistSpotify = TextEditingController();
  TextEditingController tracksInputArtistApple = TextEditingController();

  // info
  TextEditingController tracksInputLyrics = TextEditingController();
  TextEditingController tracksInputCopyrightP = TextEditingController();
  TextEditingController tracksInputCopyrightC = TextEditingController();
  TextEditingController tracksInputInternalTracksId = TextEditingController();
  TextEditingController tracksInputIsrcCode = TextEditingController();
  TextEditingController tracksInputExplicitLyrics = TextEditingController();
  int tracksYesInputIsrcCode = 1;
  int tracksPublicSong = 1;
  int tracksYesInputExplicitLyrics = 1;
  int tracksNoInputIsrcCode = 0;
  int tracksOriginSong = 0;
  int tracksNoInputExplicitLyrics = 0;
  int tracksSelectInputIsrcCode = 0;
  int tracksSelectInputExplicitLyrics = 0;
  int tracksSelectInputTrackSong = 0;

  // publish
  TextEditingController tracksInputContributorName = TextEditingController();
  TextEditingController tracksInputShare = TextEditingController();

  // Data Album dari details
  DetailsAlbumRes? dataAlbum;
  DetailsVideoRes? dataVideo;
  DetailsAudioRes? dataAudio;
  String coverImageEdit = '';
  String audioEdit = '';

  FormAlbumAudioVideoState({
    required this.context,
    required this.fromCode,
    this.dataAlbum,
    this.dataVideo,
    this.dataAudio,
  }) {
    init();
  }

  init() async {
    isLoadingList = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    await initEditAlbum();
    await initEditVideo();
    await initEditAudio();
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
          'Main',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: MainForm(
          languageResMain: languageResMain,
          languageResTrack: languageResTrack,
          genreRes1Main: genreRes1Main,
          genreRes2Main: genreRes2Main,
          listLanguage: listLanguage,
          listGenre: listGenre,
          state: this,
        ),
        // content: Container(),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: vText(
          'Tracks',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: TrackForm(
          formCode: fromCode,
          genreRes1Tracks: genreRes1Tracks,
          genreRes2Tracks: genreRes2Tracks,
          languageResTrack: languageResTrack,
          listGenre: listGenre,
          listLanguage: listLanguage,
          state: this,
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: vText(
          'Publishing',
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        content: PublishingForm(
          pubRoles: pubRoles,
          pubPublishings: pubPublishings,
          listPublishing: listPublishing,
          listRole: listRole,
          state: this,
        ),
      ),
    ];
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

        debugPrint('listLanguage $listLanguage');

        if (dataAlbum != null || dataVideo != null || dataAudio != null) {
          // edit
          if (dataAlbum?.langId != null) {
            languageResMain = LanguageRes(
              id: dataAlbum?.langId?.id ?? 0,
              name: dataAlbum?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataAlbum?.langId?.id ?? 0,
              name: dataAlbum?.langId?.name ?? '',
            );
            notifyListeners();
          } else if (dataVideo?.langId != null) {
            languageResMain = LanguageRes(
              id: dataVideo?.langId?.id ?? 0,
              name: dataVideo?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataVideo?.langId?.id ?? 0,
              name: dataVideo?.langId?.name ?? '',
            );
            notifyListeners();
          } else if (dataAudio?.langId != null) {
            languageResMain = LanguageRes(
              id: dataAudio?.langId?.id ?? 0,
              name: dataAudio?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataAudio?.langId?.id ?? 0,
              name: dataAudio?.langId?.name ?? '',
            );
            notifyListeners();
          } else {
            languageResMain = cat[0];
            languageResTrack = cat[0];
            notifyListeners();
          }
        } else {
          languageResMain = cat[0];
          languageResTrack = cat[0];
          notifyListeners();
        }
      },
    );
  }

  Future<void> getGenre() async {
    final resStep1 = await HTTPListService().getGenre();

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listGenre = cat;

        if (dataAlbum != null || dataVideo != null || dataAudio != null) {
          if (dataAlbum?.genre1 != null) {
            genreRes1Main = GenreRes(
              id: dataAlbum?.genre1?.id ?? 0,
              name: dataAlbum?.genre1?.name ?? '',
            );
          } else if (dataVideo?.genre1 != null) {
            genreRes1Main = GenreRes(
              id: dataVideo?.genre1?.id ?? 0,
              name: dataVideo?.genre1?.name ?? '',
            );
          } else if (dataAudio?.genre1 != null) {
            genreRes1Main = GenreRes(
              id: dataAudio?.genre1?.id ?? 0,
              name: dataAudio?.genre1?.name ?? '',
            );
          } else {
            genreRes1Main = cat[0];
          }

          if (dataAlbum?.genre2 != null) {
            genreRes2Main = GenreRes(
              id: dataAlbum?.genre2?.id ?? 0,
              name: dataAlbum?.genre2?.name ?? '',
            );
          } else if (dataVideo?.genre2 != null) {
            genreRes2Main = GenreRes(
              id: dataVideo?.genre2?.id ?? 0,
              name: dataVideo?.genre2?.name ?? '',
            );
          } else if (dataAudio?.genre2 != null) {
            genreRes2Main = GenreRes(
              id: dataAudio?.genre2?.id ?? 0,
              name: dataAudio?.genre2?.name ?? '',
            );
          } else {
            genreRes2Main = cat[0];
          }

          if (dataAlbum?.trackId?.genre1 != null) {
            genreRes1Tracks = GenreRes(
              id: dataAlbum?.trackId?.genre1?.id ?? 0,
              name: dataAlbum?.trackId?.genre1?.name ?? '',
            );
          } else if (dataVideo?.trackId?.genre1 != null) {
            genreRes1Tracks = GenreRes(
              id: dataVideo?.trackId?.genre1?.id ?? 0,
              name: dataVideo?.trackId?.genre1?.name ?? '',
            );
          } else if (dataAudio?.trackId?.genre1 != null) {
            genreRes1Tracks = GenreRes(
              id: dataAudio?.trackId?.genre1?.id ?? 0,
              name: dataAudio?.trackId?.genre1?.name ?? '',
            );
          } else {
            genreRes1Tracks = cat[0];
          }

          if (dataAlbum?.trackId?.genre2 != null) {
            genreRes2Tracks = GenreRes(
              id: dataAlbum?.trackId?.genre2?.id ?? 0,
              name: dataAlbum?.trackId?.genre2?.name ?? '',
            );
          } else if (dataVideo?.trackId?.genre2 != null) {
            genreRes2Tracks = GenreRes(
              id: dataVideo?.trackId?.genre2?.id ?? 0,
              name: dataVideo?.trackId?.genre2?.name ?? '',
            );
          } else if (dataAudio?.trackId?.genre2 != null) {
            genreRes2Tracks = GenreRes(
              id: dataAudio?.trackId?.genre2?.id ?? 0,
              name: dataAudio?.trackId?.genre2?.name ?? '',
            );
          } else {
            genreRes2Tracks = cat[0];
          }
        } else {
          genreRes1Main = cat[0];
          genreRes2Main = cat[0];
          genreRes1Tracks = cat[0];
          genreRes2Tracks = cat[0];
        }
        notifyListeners();
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
        if (dataAlbum?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataAlbum?.trackId?.contributor?.roleTrack;
        } else if (dataVideo?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataVideo?.trackId?.contributor?.roleTrack;
        } else if (dataAudio?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataAudio?.trackId?.contributor?.roleTrack;
        } else {
          pubRoles = cat[0];
        }
        pubRoles = cat[0];
        notifyListeners();
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
        if (dataAlbum?.trackId?.contributor?.publising != null) {
          pubPublishings = dataAlbum?.trackId?.contributor?.publising;
        } else if (dataVideo?.trackId?.contributor?.publising != null) {
          pubPublishings = dataVideo?.trackId?.contributor?.publising;
        } else if (dataAudio?.trackId?.contributor?.publising != null) {
          pubPublishings = dataAudio?.trackId?.contributor?.publising;
        } else {
          pubPublishings = cat[0];
        }
        pubPublishings = cat[0];
        notifyListeners();
      },
    );
  }

  Future<void> saveAlbum(FormData formData) async {
    isLoadingSaveOrEdit = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPAlbumService().uploadAlbum(data: formData);

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

        isSuksesAdd = true;
        notifyListeners();
      },
    );
  }

  Future<void> saveVideo(FormData formData) async {
    isLoadingSaveOrEdit = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPVideoService().uploadVideo(data: formData);

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

        isSuksesAdd = true;
        notifyListeners();
      },
    );
  }

  Future<void> saveAudio(FormData formData) async {
    isLoadingSaveOrEdit = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPAudioService().uploadAudio(data: formData);

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

        isSuksesAdd = true;
        notifyListeners();

        // UtilsLoading.showSuccess(message: 'Berhasil disimpan');

        // Future.delayed(const Duration(seconds: 1), () {
        //   Navigator.of(context).pop(true);
        // });
      },
    );
  }

  Future<void> editAlbum(FormData formData) async {
    isLoadingSaveOrEdit = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPAlbumService().editAlbum(
      id: dataAlbum?.id ?? '',
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

        isSuksesAdd = true;
        notifyListeners();
      },
    );
  }

  Future<void> editVideo(FormData formData) async {
    isLoadingSaveOrEdit = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPVideoService().editVideo(
      id: dataVideo?.id ?? '',
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
        isSuksesAdd = true;
        notifyListeners();
      },
    );
  }

  Future<void> editAudio(FormData formData) async {
    isLoadingSaveOrEdit = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPAudioService().editAudio(
      id: dataAudio?.id ?? '',
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

        isSuksesAdd = true;
        notifyListeners();
      },
    );
  }

  Future<void> initEditAlbum() async {
    if (dataAlbum != null) {
      isEdit = true;

      // main
      coverImageEdit = dataAlbum?.cover ?? '';
      inputTitleRelease.text = dataAlbum?.releaseTitle ?? '';
      inputTitleVersion.text = dataAlbum?.titleVersion ?? '';
      inputArtist.text = dataAlbum?.trackId?.artisName ?? '';

      if ((dataAlbum?.spotify ?? '').isNotEmpty) {
        inputArtistSpotify.text = dataAlbum?.spotify ?? '';
        yesInputArtistSpotify = 1;
        selectInputArtistSpotify = 1;
      } else {
        noInputArtistSpotify = 0;
        selectInputArtistSpotify = 0;
      }

      if ((dataAlbum?.itunes ?? '').isNotEmpty) {
        inputArtistApple.text = dataAlbum?.itunes ?? '';
        yesInputArtistApple = 1;
        selectInputArtistApple = 1;
      } else {
        noInputArtistApple = 0;
        selectInputArtistApple = 0;
      }

      inputCopyrightP.text = dataAlbum?.pCopyright ?? '';
      inputCopyrightC.text = dataAlbum?.cCopyright ?? '';

      if ((dataAlbum?.releasedDate ?? '').isNotEmpty) {
        inputPrevReleased.text = dataAlbum?.releasedDate ?? '';
        selectInputPrevRelease = 1;
        yesInputPrevRelease = 1;
      } else {
        selectInputPrevRelease = 0;
        noInputPrevRelease = 0;
      }

      if (dataAlbum?.labelName != null) {
        // inputLabelName.text = dataAlbum?.labelName ?? '';
        inputReleaseId.text = dataAlbum?.releasedId.toString() ?? '';
        selectInputLabel = 1;
        yesInputLabel = 1;
      } else {
        selectInputLabel = 0;
        noInputLabel = 0;
      }

      if (dataAlbum?.upc != 0) {
        inputUpc.text = dataAlbum?.upc.toString() ?? '';
        selectInputUPC = 1;
        yesInputUPC = 1;
      } else {
        selectInputUPC = 0;
        noInputUPC = 0;
      }

      //tracks
      audioEdit = dataAlbum?.trackId?.cover ?? '';
      tracksInputTitleRelease.text = dataAlbum?.trackId?.trackTitle ?? '';
      tracksInputTitleVersion.text = dataAlbum?.trackId?.trackVersion ?? '';
      tracksInputArtist.text = dataAlbum?.trackId?.artisName ?? '';

      if ((dataAlbum?.trackId?.spotify ?? '').isNotEmpty) {
        tracksInputArtistSpotify.text = dataAlbum?.trackId?.spotify ?? '';
        tracksYesInputArtistSpotify = 1;
        tracksSelectInputArtistSpotify = 1;
      } else {
        tracksNoInputArtistSpotify = 0;
        tracksSelectInputArtistSpotify = 0;
      }

      if ((dataAlbum?.trackId?.itunes ?? '').isNotEmpty) {
        tracksInputArtistApple.text = dataAlbum?.trackId?.itunes ?? '';
        tracksYesInputArtistApple = 1;
        tracksSelectInputArtistApple = 1;
      } else {
        tracksNoInputArtistApple = 0;
        tracksSelectInputArtistApple = 0;
      }

      if (dataAlbum?.trackId?.isrc != 0) {
        tracksInputIsrcCode.text = dataAlbum?.trackId?.isrc.toString() ?? '';
        tracksYesInputIsrcCode = 1;
        tracksSelectInputIsrcCode = 1;
      } else {
        tracksNoInputIsrcCode = 0;
        tracksSelectInputIsrcCode = 0;
      }

      if (dataAlbum?.trackId?.explisitLyric != 0) {
        tracksInputExplicitLyrics.text =
            dataAlbum?.trackId?.explisitLyric.toString() ?? '';
        tracksYesInputExplicitLyrics = 1;
        tracksSelectInputExplicitLyrics = 1;
      } else {
        tracksNoInputExplicitLyrics = 0;
        tracksSelectInputExplicitLyrics = 0;
      }

      if (dataAlbum?.trackId?.thisTrackIs == 0) {
        tracksOriginSong = 0;
        tracksSelectInputTrackSong = 0;
      } else {
        tracksPublicSong = 1;
        tracksSelectInputTrackSong = 1;
      }

      tracksInputCopyrightP.text = dataAlbum?.trackId?.pCopyright ?? "";
      tracksInputCopyrightC.text =
          dataAlbum?.trackId?.previewsStartTime.toString() ?? '';
      tracksInputLyrics.text = dataAlbum?.trackId?.lyric ?? '';
      tracksInputInternalTracksId.text =
          dataAlbum?.trackId?.internalTrackId.toString() ?? '';

      //publishing

      tracksInputContributorName.text =
          dataAlbum?.trackId?.contributor?.name ?? '';
      tracksInputShare.text =
          dataAlbum?.trackId?.contributor?.share.toString() ?? '';

      notifyListeners();
    }
  }

  Future<void> initEditVideo() async {
    if (dataVideo != null) {
      isEdit = true;

      // main
      coverImageEdit = dataVideo?.cover ?? '';
      inputTitleRelease.text = dataVideo?.title ?? '';
      inputTitleVersion.text = dataVideo?.titleVersion ?? '';
      inputArtist.text = dataVideo?.trackId?.artisName ?? '';

      if ((dataVideo?.spotify ?? '').isNotEmpty) {
        inputArtistSpotify.text = dataVideo?.spotify ?? '';
        yesInputArtistSpotify = 1;
        selectInputArtistSpotify = 1;
      } else {
        noInputArtistSpotify = 0;
        selectInputArtistSpotify = 0;
      }

      if ((dataVideo?.itunes ?? '').isNotEmpty) {
        inputArtistApple.text = dataVideo?.itunes ?? '';
        yesInputArtistApple = 1;
        selectInputArtistApple = 1;
      } else {
        noInputArtistApple = 0;
        selectInputArtistApple = 0;
      }

      inputCopyrightP.text = dataVideo?.pCopyright ?? '';
      inputCopyrightC.text = dataVideo?.cCopyright ?? '';

      if ((dataVideo?.released ?? '').isNotEmpty) {
        inputPrevReleased.text = dataVideo?.released ?? '';
        selectInputPrevRelease = 1;
        yesInputPrevRelease = 1;
      } else {
        selectInputPrevRelease = 0;
        noInputPrevRelease = 0;
      }

      if (dataVideo?.labelName != null) {
        // inputLabelName.text = dataVideo?.labelName ?? '';
        inputReleaseId.text = dataVideo?.releasedId.toString() ?? '';
        selectInputLabel = 1;
        yesInputLabel = 1;
      } else {
        selectInputLabel = 0;
        noInputLabel = 0;
      }

      if (dataVideo?.upc != 0) {
        inputUpc.text = dataVideo?.upc.toString() ?? '';
        selectInputUPC = 1;
        yesInputUPC = 1;
      } else {
        selectInputUPC = 0;
        noInputUPC = 0;
      }

      //tracks
      audioEdit = dataVideo?.trackId?.cover ?? '';
      tracksInputTitleRelease.text = dataVideo?.trackId?.trackTitle ?? '';
      tracksInputTitleVersion.text = dataVideo?.trackId?.trackVersion ?? '';
      tracksInputArtist.text = dataVideo?.trackId?.artisName ?? '';

      if ((dataVideo?.trackId?.spotify ?? '').isNotEmpty) {
        tracksInputArtistSpotify.text = dataVideo?.trackId?.spotify ?? '';
        tracksYesInputArtistSpotify = 1;
        tracksSelectInputArtistSpotify = 1;
      } else {
        tracksNoInputArtistSpotify = 0;
        tracksSelectInputArtistSpotify = 0;
      }

      if ((dataVideo?.trackId?.itunes ?? '').isNotEmpty) {
        tracksInputArtistApple.text = dataVideo?.trackId?.itunes ?? '';
        tracksYesInputArtistApple = 1;
        tracksSelectInputArtistApple = 1;
      } else {
        tracksNoInputArtistApple = 0;
        tracksSelectInputArtistApple = 0;
      }

      if (dataVideo?.trackId?.isrc != 0) {
        tracksInputIsrcCode.text = dataVideo?.trackId?.isrc.toString() ?? '';
        tracksYesInputIsrcCode = 1;
        tracksSelectInputIsrcCode = 1;
      } else {
        tracksNoInputIsrcCode = 0;
        tracksSelectInputIsrcCode = 0;
      }

      if (dataVideo?.trackId?.explisitLyric != 0) {
        tracksInputExplicitLyrics.text =
            dataVideo?.trackId?.explisitLyric.toString() ?? '';
        tracksYesInputExplicitLyrics = 1;
        tracksSelectInputExplicitLyrics = 1;
      } else {
        tracksNoInputExplicitLyrics = 0;
        tracksSelectInputExplicitLyrics = 0;
      }

      if (dataVideo?.trackId?.thisTrackIs == 0) {
        tracksOriginSong = 0;
        tracksSelectInputTrackSong = 0;
      } else {
        tracksPublicSong = 1;
        tracksSelectInputTrackSong = 1;
      }

      tracksInputCopyrightP.text = dataVideo?.trackId?.pCopyright ?? "";
      tracksInputCopyrightC.text =
          dataVideo?.trackId?.previewsStartTime.toString() ?? '';
      tracksInputLyrics.text = dataVideo?.trackId?.lyric ?? '';
      tracksInputInternalTracksId.text =
          dataVideo?.trackId?.internalTrackId.toString() ?? '';

      //publishing

      tracksInputContributorName.text =
          dataVideo?.trackId?.contributor?.name ?? '';
      tracksInputShare.text =
          dataVideo?.trackId?.contributor?.share.toString() ?? '';

      notifyListeners();
    }
  }

  Future<void> initEditAudio() async {
    if (dataAudio != null) {
      isEdit = true;

      // main
      coverImageEdit = dataAudio?.cover ?? '';
      inputTitleRelease.text = dataAudio?.title ?? '';
      inputTitleVersion.text = dataAudio?.titleVersion ?? '';
      inputArtist.text = dataAudio?.trackId?.artisName ?? '';

      if ((dataAudio?.spotify ?? '').isNotEmpty) {
        inputArtistSpotify.text = dataAudio?.spotify ?? '';
        yesInputArtistSpotify = 1;
        selectInputArtistSpotify = 1;
      } else {
        noInputArtistSpotify = 0;
        selectInputArtistSpotify = 0;
      }

      if ((dataAudio?.itunes ?? '').isNotEmpty) {
        inputArtistApple.text = dataAudio?.itunes ?? '';
        yesInputArtistApple = 1;
        selectInputArtistApple = 1;
      } else {
        noInputArtistApple = 0;
        selectInputArtistApple = 0;
      }

      inputCopyrightP.text = dataAudio?.pCopyright ?? '';
      inputCopyrightC.text = dataAudio?.cCopyright ?? '';

      if ((dataAudio?.released ?? '').isNotEmpty) {
        inputPrevReleased.text = dataAudio?.released ?? '';
        selectInputPrevRelease = 1;
        yesInputPrevRelease = 1;
      } else {
        selectInputPrevRelease = 0;
        noInputPrevRelease = 0;
      }

      if (dataAudio?.labelName != null) {
        // inputLabelName.text = dataVideo?.labelName ?? '';
        inputReleaseId.text = dataAudio?.releasedId.toString() ?? '';
        selectInputLabel = 1;
        yesInputLabel = 1;
      } else {
        selectInputLabel = 0;
        noInputLabel = 0;
      }

      if (dataAudio?.upc != 0) {
        inputUpc.text = dataAudio?.upc.toString() ?? '';
        selectInputUPC = 1;
        yesInputUPC = 1;
      } else {
        selectInputUPC = 0;
        noInputUPC = 0;
      }

      //tracks
      audioEdit = dataAudio?.trackId?.cover ?? '';
      tracksInputTitleRelease.text = dataAudio?.trackId?.trackTitle ?? '';
      tracksInputTitleVersion.text = dataAudio?.trackId?.trackVersion ?? '';
      tracksInputArtist.text = dataAudio?.trackId?.artisName ?? '';

      if ((dataAudio?.trackId?.spotify ?? '').isNotEmpty) {
        tracksInputArtistSpotify.text = dataAudio?.trackId?.spotify ?? '';
        tracksYesInputArtistSpotify = 1;
        tracksSelectInputArtistSpotify = 1;
      } else {
        tracksNoInputArtistSpotify = 0;
        tracksSelectInputArtistSpotify = 0;
      }

      if ((dataAudio?.trackId?.itunes ?? '').isNotEmpty) {
        tracksInputArtistApple.text = dataAudio?.trackId?.itunes ?? '';
        tracksYesInputArtistApple = 1;
        tracksSelectInputArtistApple = 1;
      } else {
        tracksNoInputArtistApple = 0;
        tracksSelectInputArtistApple = 0;
      }

      if (dataAudio?.trackId?.isrc != 0) {
        tracksInputIsrcCode.text = dataAudio?.trackId?.isrc.toString() ?? '';
        tracksYesInputIsrcCode = 1;
        tracksSelectInputIsrcCode = 1;
      } else {
        tracksNoInputIsrcCode = 0;
        tracksSelectInputIsrcCode = 0;
      }

      if (dataAudio?.trackId?.explisitLyric != 0) {
        tracksInputExplicitLyrics.text =
            dataAudio?.trackId?.explisitLyric.toString() ?? '';
        tracksYesInputExplicitLyrics = 1;
        tracksSelectInputExplicitLyrics = 1;
      } else {
        tracksNoInputExplicitLyrics = 0;
        tracksSelectInputExplicitLyrics = 0;
      }

      if (dataAudio?.trackId?.thisTrackIs == 0) {
        tracksOriginSong = 0;
        tracksSelectInputTrackSong = 0;
      } else {
        tracksPublicSong = 1;
        tracksSelectInputTrackSong = 1;
      }

      tracksInputCopyrightP.text = dataAudio?.trackId?.pCopyright ?? "";
      tracksInputCopyrightC.text =
          dataAudio?.trackId?.previewsStartTime.toString() ?? '';
      tracksInputLyrics.text = dataAudio?.trackId?.lyric ?? '';
      tracksInputInternalTracksId.text =
          dataAudio?.trackId?.internalTrackId.toString() ?? '';

      //publishing

      tracksInputContributorName.text =
          dataAudio?.trackId?.contributor?.name ?? '';
      tracksInputShare.text =
          dataAudio?.trackId?.contributor?.share.toString() ?? '';

      notifyListeners();
    }
  }

  String setTextButton({
    required bool isLastStep,
    bool isLoading = false,
    DataAlbumRes? dataAlbum,
    DataVideoRes? dataVideo,
    DataAudioRes? dataAudio,
  }) {
    if (isLastStep == true) {
      if (isLoading == true) {
        return 'Loading...';
      } else {
        if (dataAlbum != null) {
          return 'Edit';
        } else if (dataVideo != null) {
          return 'Edit';
        } else if (dataAudio != null) {
          return 'Edit';
        } else {
          return 'Simpan';
        }
      }
    } else {
      return 'Selanjutnya';
    }
  }
}
