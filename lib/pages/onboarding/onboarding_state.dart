import 'package:flutter/material.dart';
import 'package:yboxv2/widget/v_text.dart';

class OnboardingState extends ChangeNotifier {
  OnboardingState({
    required this.context,
  });

  final BuildContext context;

  int totalPage = 4;

  List<Widget> listBackground = [
    Image.asset(
      'assets/image/the_band_concert.png',
      height: 308,
      fit: BoxFit.scaleDown,
    ),
    Image.asset(
      'assets/image/the_band_musical_notes.png',
      height: 308,
      fit: BoxFit.scaleDown,
    ),
    Image.asset(
      'assets/image/the_band_musicians.png',
      height: 308,
      fit: BoxFit.scaleDown,
    ),
    Image.asset(
      'assets/image/the_band_party.png',
      height: 308,
      fit: BoxFit.scaleDown,
    ),
  ];

  List<Widget> listPageBody = [
    pageBody(
      title: 'Keterangan dari Intro Leader',
      subtitle: 'Melindungi lisensi dari karya anda yang distribusikan',
    ),
    pageBody(
      title: 'Melindungi Hak Cipta terhadap karya anda',
      subtitle:
          'Akan melindungi hak cipta oleh hasil kreasi intelektual seseorang bisa diterima oleh publik.',
    ),
    pageBody(
      title: 'Tujuan dari distribusi karya ',
      subtitle: 'Kami akan membayar untuk semua karya yang distribusikan',
    ),
    pageBody(
      title: 'Data oleh klien yang akan didistribusikan',
      subtitle: 'Kita akan memilih data yang akan didistribusikan',
    ),
  ];
}

Widget pageBody({
  required String title,
  required String subtitle,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 24.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 480,
        ),
        vText(
          title,
          fontSize: 28.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          maxLines: 2,
        ),
        const SizedBox(
          height: 12,
        ),
        vText(
          subtitle,
          fontSize: 18.0,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          maxLines: 4,
        ),
      ],
    ),
  );
}
