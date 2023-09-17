// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:yboxv2/pages/home/fragment/akun_fragment.dart';
import 'package:yboxv2/pages/home/fragment/album_fragment.dart';
import 'package:yboxv2/pages/home/fragment/home_fragment.dart';
import 'package:yboxv2/pages/home/fragment/track_fragment.dart';
import 'package:yboxv2/pages/home/fragment/video_fragment.dart';

class BodyBottomBar extends StatelessWidget {
  final int page;
  const BodyBottomBar({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (page) {
      case 0:
        {
          return HomeFragment();
        }

      case 1:
        {
          return AlbumFragment();
        }
      case 2:
        {
          return TrackFragment();
        }

      case 3:
        {
          return VideoFragment();
        }

      case 4:
        {
          return AkunFragment();
        }

      default:
    }
    return Container();
  }
}
