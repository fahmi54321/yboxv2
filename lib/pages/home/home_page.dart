import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/home/home_state.dart';
import 'package:yboxv2/pages/home/widget/body_bottom_bar.dart';
import 'package:yboxv2/pages/home/widget/icon_bottombar.dart';
import 'package:yboxv2/resource/CPColors.dart';

class HomePage extends StatefulWidget {
  static const route = 'home-page';
  const HomePage({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<HomePage> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeState(
        context: context,
      ),
      child: Consumer(
        builder: (BuildContext context, HomeState state, _) {
          return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: 0,
              height: 60.0,
              items: <Widget>[
                IconButtonBar(
                  page: state.page,
                  currentPage: 0,
                  label: 'Home',
                  icon: Icons.home,
                ),
                IconButtonBar(
                  page: state.page,
                  currentPage: 1,
                  label: 'Album',
                  icon: Icons.image,
                ),
                IconButtonBar(
                  page: state.page,
                  currentPage: 2,
                  label: 'Track',
                  icon: Icons.audiotrack_outlined,
                ),
                IconButtonBar(
                  page: state.page,
                  currentPage: 3,
                  label: 'Video',
                  icon: Icons.video_camera_back,
                ),
                IconButtonBar(
                  page: state.page,
                  currentPage: 4,
                  label: 'Akun',
                  icon: Icons.person_2,
                ),
              ],
              color: primaryColor,
              buttonBackgroundColor: primaryColor,
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              animationCurve: Curves.easeOutExpo,
              animationDuration: const Duration(milliseconds: 600),
              onTap: (index) {
                setState(() {
                  state.page = index;
                });
              },
              letIndexChange: (index) => true,
            ),
            body: BodyBottomBar(
              page: state.page,
            ),
          );
        },
      ),
    );
  }
}
