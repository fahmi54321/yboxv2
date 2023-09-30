import 'package:flutter/material.dart';
import 'package:yboxv2/models/video/details_video_res.dart';
import 'package:yboxv2/network/http_video.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class DetailsVideoState extends ChangeNotifier {
  final BuildContext context;
  final String id;

  bool isLoading = true;

  DetailsVideoRes? dataVideo;

  DetailsVideoState({
    required this.context,
    required this.id,
  }) {
    init();
  }

  void init() async {
    Future.delayed(const Duration(milliseconds: 500), () {
      getDetailsVideo();
    });
  }

  Future<void> getDetailsVideo() async {
    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPVideoService().detailsVideo(id: id);

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        dataVideo = cat;
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
      },
    );
  }
}
