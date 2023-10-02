import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/track/track_res.dart';
import 'package:yboxv2/network/http_track.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class TrackFragmentStates extends ChangeNotifier {
  BuildContext context;

  TrackFragmentStates({required this.context}) {
    init();
  }

  final PagingController<int, DataTrackRes> pagingController =
      PagingController(firstPageKey: 1);

  init() async {
    pagingController.addPageRequestListener((pageKey) {
      getTrack(pageKey);
    });
  }

  Future<void> pullRefresh() async {
    pagingController.refresh();
  }

  Future<void> getTrack(int page) async {
    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    LoginRes loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    Map<String, dynamic> data = {
      'page': page,
      'id': loginRes.id,
    };
    try {
      final resStep1 = await HTTPTrackService().getTrack(
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
