import 'package:flutter/material.dart';

class HomeState extends ChangeNotifier {
  HomeState({
    required this.context,
  });

  final BuildContext context;

  int page = 0;

  Color colorIcon({required int page, required currentPage}) {
    if (page == currentPage) {
      return Theme.of(context).colorScheme.onPrimary;
    } else {
      return Theme.of(context).colorScheme.onPrimary.withOpacity(0.23);
    }
  }
}
