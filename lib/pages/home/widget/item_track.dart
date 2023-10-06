// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yboxv2/models/track/track_res.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/resource/strings.dart';
import 'package:yboxv2/widget/v_text.dart';

class ItemTrack extends StatelessWidget {
  final DataTrackRes item;
  final Function()? onTap;
  const ItemTrack({
    Key? key,
    required this.item,
    this.onTap,
  }) : super(key: key);

  Widget statusData({
    required int isCheck,
    required BuildContext context,
  }) {
    switch (isCheck) {
      // pending
      case 0:
        {
          return Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: yellow1,
                ),
                child: SvgPicture.asset('assets/icon/ic_pending.svg'),
              ),
              const SizedBox(width: 7.0),
              vText(
                'Menunggu',
                fontSize: 11.0,
                fontWeight: FontWeight.w400,
                color: yellow1,
              ),
            ],
          );
        }

      // approved
      case 1:
        {
          return Row(
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
                'Disetujui',
                fontSize: 11.0,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
            ],
          );
        }

      // di tolak
      case 2:
        {
          return Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: red1,
                ),
                child: Icon(
                  Icons.close,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
              const SizedBox(width: 7.0),
              vText(
                'Ditolak',
                fontSize: 11.0,
                fontWeight: FontWeight.w400,
                color: red1,
              ),
            ],
          );
        }
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    String image = item.image.replaceAll('public', 'storage');
    String urlImage = appUrl + image;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.0),
      splashColor: primaryColor2,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
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
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                urlImage,
                width: 94.0,
                height: 66.0,
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  return child;
                },
                errorBuilder: ((context, error, stackTrace) {
                  return const SizedBox(
                    width: 84.0,
                    height: 56.0,
                    child: Placeholder(
                      color: primaryColor,
                    ),
                  );
                }),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return SizedBox(
                    width: 94.0,
                    height: 66.0,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 7.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    item.trackTitle.toUpperCase(),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    color: grey7,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 7.0),
                  vText(
                    item.artisName,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                    color: grey7,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 7.0),
                  statusData(
                    isCheck: item.isCheck,
                    context: context,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
