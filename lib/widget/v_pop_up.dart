import 'package:flutter/material.dart';

Future<dynamic> popUpCustom({
  required BuildContext context,
  required Widget widget,
}) async {
  dynamic val;
  await showModalBottomSheet(
    backgroundColor: Theme.of(context).colorScheme.onPrimary,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16.0), topLeft: Radius.circular(16.0)),
        ),
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.25,
            maxHeight: MediaQuery.of(context).size.height * 0.75),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: widget,
        ),
      );
    },
  ).then((value) {
    val = value;
    debugPrint('value args bank :$value');
    return value;
  });

  return val;
}
