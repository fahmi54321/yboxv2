// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/chat/models/chat.dart';

import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/pages/chats/chat_page.dart';
import 'package:yboxv2/pages/chats/chat_user_page.dart';
import 'package:yboxv2/pages/home/home_state.dart';
import 'package:yboxv2/pages/home/widget/body_bottom_bar.dart';
import 'package:yboxv2/pages/home/widget/icon_bottombar.dart';
import 'package:yboxv2/resource/CPColors.dart';

class ArgsHomePage {
  final LoginRes loginRes;
  ArgsHomePage({
    required this.loginRes,
  });
}

class HomePage extends StatefulWidget {
  static const route = 'home-page';
  final ArgsHomePage args;
  const HomePage({
    Key? key,
    required this.args,
  }) : super(key: key);

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
            floatingActionButton: InkWell(
              onTap: () {
                if (widget.args.loginRes.level == 3) {
                  // if()
                  Navigator.pushNamed(
                    context,
                    ChatPage.route,
                    arguments: ArgsChatPage(
                      isLeader: false,
                      loginRes: widget.args.loginRes,
                      chat: Chat(
                        uid: widget.args.loginRes.uuidMsgLeader!,
                        currentUserUid: widget.args.loginRes.uuidMsg!,
                        messages: [],
                        members: [],
                        group: false,
                        activity: false,
                      ),
                    ),
                  );
                } else {
                  Navigator.pushNamed(
                    context,
                    ChatUserPage.route,
                  );
                }
              },
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor2,
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/image/img_chat.png',
                      width: 25.0,
                      height: 25.0,
                    ),
                    Positioned(
                      right: 0,
                      top: 2.0,
                      child: Container(
                        width: 7.0,
                        height: 7.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: red1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
