import 'package:flutter/material.dart';
import 'package:yboxv2/models/audio/details_audio_res.dart';
import 'package:yboxv2/network/http_audio.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class DetailsAudioState extends ChangeNotifier {
  final BuildContext context;
  final String id;

  bool isLoading = true;

  DetailsAudioRes? dataAudio;

  DetailsAudioState({
    required this.context,
    required this.id,
  }) {
    init();
  }

  void init() async {
    Future.delayed(const Duration(milliseconds: 500), () {
      getDetailsAudio();
    });
  }

  Future<void> getDetailsAudio() async {
    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPAudioService().detailsAudio(id: id);

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        dataAudio = cat;
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
      },
    );
  }
}
