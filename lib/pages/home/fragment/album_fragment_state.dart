import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:yboxv2/models/album/album_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/http_album.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class AlbumFragmentState extends ChangeNotifier {
  BuildContext context;

  AlbumRes? albumRes;

  AlbumFragmentState({required this.context}) {
    init();
  }

  final PagingController<int, DataAlbumRes> pagingController =
      PagingController(firstPageKey: 1);

  init() async {
    pagingController.addPageRequestListener((pageKey) {
      getAlbum(pageKey);
    });
  }

  Future<void> pullRefresh() async {
    pagingController.refresh();
  }

  Future<void> getAlbum(int page) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    Map<String, dynamic> data = {
      'page': page,
      'id': loginRes.id,
    };
    try {
      final resStep1 = await HTTPAlbumService().getAlbum(
        data: data,
      );

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);
        },
        (cat) async {
          final isLastPage = cat.data.length < cat.pagination.perPage;
          if (isLastPage) {
            pagingController.appendLastPage(cat.data);
          } else {
            final nextPageKey = page + 1;

            pagingController.appendPage(cat.data, nextPageKey);
          }
        },
      );
    } catch (error) {
      debugPrint('$error');
      pagingController.error = error;
    }
  }

  Widget getIconStatus(int status) {
    if (status == 0) {
      return Icon(
        Icons.pending_rounded,
        color: Theme.of(context).colorScheme.primary,
        size: 16,
      );
    } else if (status == 1) {
      return const Icon(
        Icons.done_outline,
        color: green1,
        size: 16,
      );
    } else {
      return Icon(
        Icons.pending_rounded,
        color: Theme.of(context).colorScheme.primary,
        size: 16,
      );
    }
  }

  String getTextStatus(int status) {
    if (status == 0) {
      return 'Pending';
    } else if (status == 1) {
      return 'Approvved';
    } else {
      return 'Pending';
    }
  }
}
