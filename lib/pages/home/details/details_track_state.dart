import 'package:flutter/material.dart';
import 'package:yboxv2/models/track/details_track_res.dart';
import 'package:yboxv2/network/http_track.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class DetailsTrackState extends ChangeNotifier {
  final BuildContext context;
  final String id;

  bool isLoading = true;

  DetailsTrackRes? dataTrack;

  DetailsTrackState({
    required this.context,
    required this.id,
  }) {
    init();
  }

  void init() async {
    Future.delayed(const Duration(milliseconds: 500), () {
      getDetailsTrack();
    });
  }

  Future<void> getDetailsTrack() async {
    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPTrackService().detailsTrack(id: id);

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        dataTrack = cat;
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
      },
    );
  }
}
