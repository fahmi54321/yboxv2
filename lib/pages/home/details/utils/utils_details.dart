import 'package:flutter/material.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/platform/platform_res.dart';
import 'package:yboxv2/resource/CPColors.dart';

class UtilsDetails {
  static String gabungGenre({
    required GenreRes? genre1,
    required GenreRes? genre2,
  }) {
    return '${genre1?.name}, ${genre2?.name}';
  }

  static String getIdListPlatform({required List<PlatformRes> list}) {
    final listChecked = list.where((element) => element.isChecked).toList();
    if (listChecked.isNotEmpty) {
      final List<int> listIdStatus = listChecked.map((e) => e.id).toList();
      final String id = listIdStatus.join(',');

      return id;
    } else {
      return '';
    }
  }

  static String getTextStatus({required int status}) {
    switch (status) {
      case 0:
        return 'Ditunda';

      case 1:
        return 'Dikirim';
      case 2:
        return 'Diterima';
      case 3:
        return 'Ditolak';

      default:
        return 'Ditunda';
    }
  }

  static Color getBgColor({required int status}) {
    switch (status) {
      case 0:
        return yellow1;

      case 1:
        return secondaryColor;
      case 2:
        return primaryColor;
      case 3:
        return red1;

      default:
        return yellow1;
    }
  }

  static Color getTextColor({
    required int status,
    required BuildContext context,
  }) {
    switch (status) {
      case 0:
        return Theme.of(context).colorScheme.onPrimary;

      case 1:
        return Theme.of(context).colorScheme.onPrimary;
      case 2:
        return Theme.of(context).colorScheme.onPrimary;
      case 3:
        return Theme.of(context).colorScheme.onPrimary;

      default:
        return Theme.of(context).colorScheme.onPrimary;
    }
  }

  static IconData getIconStatus({
    required int status,
  }) {
    switch (status) {
      case 0:
        return Icons.pending;

      case 1:
        return Icons.wifi_protected_setup;
      case 2:
        return Icons.done_all_rounded;
      case 3:
        return Icons.close;

      default:
        return Icons.pending;
    }
  }
}
