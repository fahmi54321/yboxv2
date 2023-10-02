import 'package:flutter/material.dart';

class UtilsStyle {
  static Decoration decorationGradientWhite({
    required BuildContext context,
    double? radius,
  }) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 0.0),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.53),
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.53),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Colors.black.withOpacity(0.23),
            offset: const Offset(
              2,
              4,
            ),
          ),
        ],
      );

  static Decoration decorationGradientWhite2({
    required BuildContext context,
    double? radius,
  }) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 0.0),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.53),
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.onPrimary.withOpacity(0.53),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Colors.black.withOpacity(0.23),
            offset: const Offset(
              2,
              4,
            ),
          ),
        ],
      );
}
