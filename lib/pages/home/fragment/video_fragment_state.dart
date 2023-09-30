import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/video/video_res.dart';
import 'package:yboxv2/network/http_video.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class VideoFragmentStates extends ChangeNotifier {
  BuildContext context;

  VideoRes? videoRes;

  VideoFragmentStates({required this.context}) {
    init();
  }

  final PagingController<int, DataVideoRes> pagingController =
      PagingController(firstPageKey: 1);

  init() async {
    pagingController.addPageRequestListener((pageKey) {
      getVideo(pageKey);
    });
  }

  Future<void> pullRefresh() async {
    pagingController.refresh();
  }

  Future<void> getVideo(int page) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    Map<String, dynamic> data = {
      'page': page,
      'id': loginRes.id,
    };
    try {
      final resStep1 = await HTTPVideoService().getVideo(
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
      return Icon(
        Icons.done_outline,
        color: Theme.of(context).colorScheme.primary,
        size: 16,
      );
    } else {
      return Icon(
        Icons.close,
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
