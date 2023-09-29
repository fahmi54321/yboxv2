import 'package:flutter/material.dart';
import 'package:yboxv2/models/album/details_album_res.dart';
import 'package:yboxv2/network/http_album.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class DetailsAlbumState extends ChangeNotifier {
  final BuildContext context;
  final String id;

  bool isLoading = true;

  DetailsAlbumRes? dataAlbum;

  DetailsAlbumState({
    required this.context,
    required this.id,
  }) {
    init();
  }

  void init() async {
    Future.delayed(const Duration(milliseconds: 500), () {
      getDetailsAlbum();
    });
  }

  Future<void> getDetailsAlbum() async {
    UtilsLoading.showLoading(message: 'Loading');

    final resStep1 = await HTTPAlbumService().detailsAlbum(id: id);

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        dataAlbum = cat;
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
      },
    );
  }
}
