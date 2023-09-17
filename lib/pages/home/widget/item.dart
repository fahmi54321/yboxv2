import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class ItemAll extends StatelessWidget {
  final Function()? onTap;
  const ItemAll({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.0),
      splashColor: primaryColor2,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
        margin: const EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.onPrimary.withOpacity(0.73),
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).colorScheme.onPrimary.withOpacity(0.73),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              blurStyle: BlurStyle.inner,
              color: Colors.black.withOpacity(0.23),
              offset: const Offset(-2, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 94.0,
              height: 66.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: Image.asset(
                    'assets/image/the_band_party.png',
                    width: 94.0,
                    height: 66.0,
                  ).image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 7.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    'ISTJ'.toUpperCase(),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: grey7,
                  ),
                  const SizedBox(height: 7.0),
                  vText(
                    'NCT Dream',
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: grey7,
                  ),
                  const SizedBox(height: 7.0),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor,
                        ),
                        child: SvgPicture.asset('assets/icon/ic_done.svg'),
                      ),
                      const SizedBox(width: 7.0),
                      vText(
                        'Approved',
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400,
                        color: grey7,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 7.0),
            Container(
              padding: const EdgeInsets.all(6.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: SvgPicture.asset('assets/icon/ic_edit.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
