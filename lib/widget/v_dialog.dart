import 'package:flutter/material.dart';

Future<dynamic> showDialog1({
  required BuildContext context,
  required Widget widget,
  double? widthDialog,
  double? maxHeightDialog,
}) async {
  dynamic val;
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        child: SizedBox(
          width: widthDialog ?? MediaQuery.of(context).size.width / 2,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: maxHeightDialog ?? double.infinity,
            ),
            child: widget,
          ),
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
