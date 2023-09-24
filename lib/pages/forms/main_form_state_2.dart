import 'package:yboxv2/models/album/album_res.dart';
import 'package:yboxv2/models/audio/audio_res.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/general/publishing_res.dart';
import 'package:yboxv2/models/general/roles_res.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/models/video/video_res.dart';
import 'package:yboxv2/network/http_list.dart';
import 'package:yboxv2/pages/forms/main_form.dart';
import 'package:yboxv2/pages/forms/publishing_form.dart';
import 'package:yboxv2/pages/forms/track_form.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/widget/v_text.dart';
import 'package:flutter/material.dart';

class MainFormState2 extends ChangeNotifier {
  final BuildContext context;
  final String fromCode;

  int currentStep = 0;

  bool isLoadingList = false;

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
  List<LeaderRes> listLabelReq = [];
  List<RolesRes> listRole = [];
  List<PublishingRes> listPublishing = [];

  // edit
  DataAlbumRes? dataAlbumRes;
  DataVideoRes? dataVideoRes;
  DataAudioRes? dataAudioRes;

  MainFormState2({
    required this.context,
    required this.fromCode,
  }) {
    init();
  }

  init() async {
    isLoadingList = true;
    notifyListeners();

    UtilsLoading.showLoading(message: 'Loading');

    await getLanguage();
    await getGenre();
    await getLabelMain();
    await getRoles();
    await getPublishing();

    isLoadingList = false;
    notifyListeners();

    UtilsLoading.dismiss();
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
          mainLabel: mainLabel,
          listLanguage: listLanguage,
          listGenre: listGenre,
          listLabelReq: listLabelReq,
        ),
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
            trackLabel: trackLabel,
            languageResTrack: languageResTrack,
            listGenre: listGenre,
            listLabelReq: listLabelReq,
            listLanguage: listLanguage,
          )),
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

        if (dataAlbumRes != null ||
            dataVideoRes != null ||
            dataAudioRes != null) {
          // edit
          if (dataAlbumRes?.langId != null) {
            languageResMain = LanguageRes(
              id: dataAlbumRes?.langId?.id ?? 0,
              name: dataAlbumRes?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataAlbumRes?.langId?.id ?? 0,
              name: dataAlbumRes?.langId?.name ?? '',
            );
            notifyListeners();
          } else if (dataVideoRes?.langId != null) {
            languageResMain = LanguageRes(
              id: dataVideoRes?.langId?.id ?? 0,
              name: dataVideoRes?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataVideoRes?.langId?.id ?? 0,
              name: dataVideoRes?.langId?.name ?? '',
            );
            notifyListeners();
          } else if (dataAudioRes?.langId != null) {
            languageResMain = LanguageRes(
              id: dataAudioRes?.langId?.id ?? 0,
              name: dataAudioRes?.langId?.name ?? '',
            );
            languageResTrack = LanguageRes(
              id: dataAudioRes?.langId?.id ?? 0,
              name: dataAudioRes?.langId?.name ?? '',
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

        if (dataAlbumRes != null ||
            dataVideoRes != null ||
            dataAudioRes != null) {
          if (dataAlbumRes?.genre1 != null) {
            genreRes1Main = GenreRes(
              id: dataAlbumRes?.genre1?.id ?? 0,
              name: dataAlbumRes?.genre1?.name ?? '',
            );
          } else if (dataVideoRes?.genre1 != null) {
            genreRes1Main = GenreRes(
              id: dataVideoRes?.genre1?.id ?? 0,
              name: dataVideoRes?.genre1?.name ?? '',
            );
          } else if (dataAudioRes?.genre1 != null) {
            genreRes1Main = GenreRes(
              id: dataAudioRes?.genre1?.id ?? 0,
              name: dataAudioRes?.genre1?.name ?? '',
            );
          } else {
            genreRes1Main = cat[0];
          }

          if (dataAlbumRes?.genre2 != null) {
            genreRes2Main = GenreRes(
              id: dataAlbumRes?.genre2?.id ?? 0,
              name: dataAlbumRes?.genre2?.name ?? '',
            );
          } else if (dataVideoRes?.genre2 != null) {
            genreRes2Main = GenreRes(
              id: dataVideoRes?.genre2?.id ?? 0,
              name: dataVideoRes?.genre2?.name ?? '',
            );
          } else if (dataAudioRes?.genre2 != null) {
            genreRes2Main = GenreRes(
              id: dataAudioRes?.genre2?.id ?? 0,
              name: dataAudioRes?.genre2?.name ?? '',
            );
          } else {
            genreRes2Main = cat[0];
          }

          if (dataAlbumRes?.trackId?.genre1 != null) {
            genreRes1Tracks = GenreRes(
              id: dataAlbumRes?.trackId?.genre1?.id ?? 0,
              name: dataAlbumRes?.trackId?.genre1?.name ?? '',
            );
          } else if (dataVideoRes?.trackId?.genre1 != null) {
            genreRes1Tracks = GenreRes(
              id: dataVideoRes?.trackId?.genre1?.id ?? 0,
              name: dataVideoRes?.trackId?.genre1?.name ?? '',
            );
          } else if (dataAudioRes?.trackId?.genre1 != null) {
            genreRes1Tracks = GenreRes(
              id: dataAudioRes?.trackId?.genre1?.id ?? 0,
              name: dataAudioRes?.trackId?.genre1?.name ?? '',
            );
          } else {
            genreRes1Tracks = cat[0];
          }

          if (dataAlbumRes?.trackId?.genre2 != null) {
            genreRes2Tracks = GenreRes(
              id: dataAlbumRes?.trackId?.genre2?.id ?? 0,
              name: dataAlbumRes?.trackId?.genre2?.name ?? '',
            );
          } else if (dataVideoRes?.trackId?.genre2 != null) {
            genreRes2Tracks = GenreRes(
              id: dataVideoRes?.trackId?.genre2?.id ?? 0,
              name: dataVideoRes?.trackId?.genre2?.name ?? '',
            );
          } else if (dataAudioRes?.trackId?.genre2 != null) {
            genreRes2Tracks = GenreRes(
              id: dataAudioRes?.trackId?.genre2?.id ?? 0,
              name: dataAudioRes?.trackId?.genre2?.name ?? '',
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

  Future<void> getLabelMain() async {
    final resStep1 = await HTTPListService().getLabelReq();

    notifyListeners();
    resStep1.fold(
      (e) async {
        isLoadingList = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listLabelReq = cat;
        if (dataAlbumRes?.labelName != null) {
          mainLabel = dataAlbumRes?.labelName ??
              const LeaderRes(
                id: '',
                name: '',
                image: '',
              );
          trackLabel = dataAlbumRes?.labelName ??
              const LeaderRes(
                id: '',
                name: '',
                image: '',
              );
          notifyListeners();
        } else if (dataVideoRes?.labelName != null) {
          mainLabel = dataVideoRes?.labelName ??
              const LeaderRes(
                id: '',
                name: '',
                image: '',
              );
          trackLabel = dataAlbumRes?.labelName ??
              const LeaderRes(
                id: '',
                name: '',
                image: '',
              );
          notifyListeners();
        } else if (dataAudioRes?.labelName != null) {
          mainLabel = dataAudioRes?.labelName ??
              const LeaderRes(
                id: '',
                name: '',
                image: '',
              );
          trackLabel = dataAlbumRes?.labelName ??
              const LeaderRes(
                id: '',
                name: '',
                image: '',
              );
          notifyListeners();
        } else {
          mainLabel = cat[0];
          trackLabel = cat[0];
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
        if (dataAlbumRes?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataAlbumRes?.trackId?.contributor?.roleTrack;
        } else if (dataVideoRes?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataVideoRes?.trackId?.contributor?.roleTrack;
        } else if (dataAudioRes?.trackId?.contributor?.roleTrack != null) {
          pubRoles = dataAudioRes?.trackId?.contributor?.roleTrack;
        } else {
          pubRoles = cat[0];
        }
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
        if (dataAlbumRes?.trackId?.contributor?.publising != null) {
          pubPublishings = dataAlbumRes?.trackId?.contributor?.publising;
        } else if (dataVideoRes?.trackId?.contributor?.publising != null) {
          pubPublishings = dataVideoRes?.trackId?.contributor?.publising;
        } else if (dataAudioRes?.trackId?.contributor?.publising != null) {
          pubPublishings = dataAudioRes?.trackId?.contributor?.publising;
        } else {
          pubPublishings = cat[0];
        }
        notifyListeners();
      },
    );
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
        // if (dataAlbumRes != null) {
        //   return 'Edit Album';
        // } else if (dataVideoRes != null) {
        //   return 'Edit Video';
        // } else if (dataAudio != null) {
        //   return 'Edit Audio';
        // } else {
        //   return 'Approve';
        // }
        return 'Approve';
      }
    } else {
      return 'Selanjutnya';
    }
  }
}
