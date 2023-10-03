// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/anim/animation_home.dart';
import 'package:yboxv2/pages/home/fragment/home_fragment_state.dart';
import 'package:yboxv2/pages/home/widget/category.dart';
import 'package:yboxv2/pages/home/widget/grafik_filter.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 2000,
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeFragmentState(),
      child: Consumer(builder: (
        BuildContext context,
        HomeFragmentState state,
        _,
      ) {
        return state.isLoading
            ? Container()
            : Home(
                controller: _controller,
                state: state,
              );
      }),
    );
  }
}

class Home extends StatefulWidget {
  final AnimationController controller;
  final AnimationHome animation;
  final HomeFragmentState state;
  Home({
    super.key,
    required this.controller,
    required this.state,
  }) : animation = AnimationHome(controller: controller);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    widget.controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.animation.controller,
        builder: (BuildContext context, Widget? child) {
          return CupertinoPageScaffold(
            backgroundColor: primaryColor,
            child: CustomScrollView(
              slivers: <Widget>[
                CupertinoSliverNavigationBar(
                  backgroundColor: primaryColor,
                  leading: Opacity(
                    opacity: widget.animation.appBarOpacity.value,
                    child: Icon(
                      Icons.person,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  largeTitle: Opacity(
                    opacity: widget.animation.appBarOpacity.value,
                    child: vText(
                      'Hi, ${widget.state.userRes?.completeName}',
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 24.0,
                    ),
                  ),
                  middle: Opacity(
                    opacity: widget.animation.appBarOpacity.value,
                    child: vText(
                      'Selamat datang',
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                SliverFillRemaining(
                  child: Scaffold(
                    body: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                          left: 16.0,
                          right: 16.0,
                          bottom: 36.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: widget.animation.kategoriOpacity.value,
                              child: vText(
                                'Categories',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: black2,
                              ),
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 10,
                              crossAxisCount: 2,
                              children: <Widget>[
                                Opacity(
                                  opacity:
                                      widget.animation.gridCol1Opacity.value,
                                  child: Category(
                                    icon: 'assets/icon/ic_album.png',
                                    vector: 'assets/icon/ic_vector_album.png',
                                    label: 'Album',
                                    total: '${widget.state.countAlbum?.count}',
                                    isOffsetRight: false,
                                  ),
                                ),
                                Opacity(
                                  opacity:
                                      widget.animation.gridCol1Opacity.value,
                                  child: Category(
                                    icon: 'assets/icon/ic_video.png',
                                    vector: 'assets/icon/ic_vector_video.png',
                                    label: 'Video',
                                    total: '${widget.state.countVideo?.count}',
                                    isOffsetRight: true,
                                  ),
                                ),
                                Opacity(
                                  opacity:
                                      widget.animation.gridCol2Opacity.value,
                                  child: Category(
                                    icon: 'assets/icon/ic_ringtone.png',
                                    vector:
                                        'assets/icon/ic_vector_ringtone.png',
                                    label: 'Ringtone',
                                    total:
                                        '${widget.state.countRingtone?.count}',
                                    isOffsetRight: false,
                                  ),
                                ),
                                Opacity(
                                  opacity:
                                      widget.animation.gridCol2Opacity.value,
                                  child: Category(
                                    icon: 'assets/icon/ic_music.png',
                                    vector: 'assets/icon/ic_vector_musik.png',
                                    label: 'Track',
                                    total: '${widget.state.countTrack?.count}',
                                    isOffsetRight: true,
                                  ),
                                ),
                                Opacity(
                                  opacity:
                                      widget.animation.gridCol3Opacity.value,
                                  child: Category(
                                    icon: 'assets/icon/ic_money.png',
                                    vector: 'assets/icon/ic_vector_money.png',
                                    label: 'Amount',
                                    total:
                                        'Rp. ${widget.state.countAmount?.rp}',
                                    isOffsetRight: false,
                                    isAmount: true,
                                  ),
                                ),
                                Opacity(
                                  opacity:
                                      widget.animation.gridCol3Opacity.value,
                                  child: Category(
                                    icon: 'assets/icon/ic_progress.png',
                                    vector:
                                        'assets/icon/ic_vector_progress.png',
                                    label: 'Progress',
                                    total:
                                        '${widget.state.countProgress?.count}',
                                    isOffsetRight: true,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 26.0),
                            Opacity(
                              opacity: widget.animation.grafikOpacity.value,
                              child: Row(
                                children: [
                                  vText(
                                    'Grafik',
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: black2,
                                  ),
                                  const SizedBox(width: 30.0),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: GrafikFilter(
                                            label: 'Jan-Mar',
                                            onTap: () {},
                                          ),
                                        ),
                                        const SizedBox(width: 10.0),
                                        Expanded(
                                          child: GrafikFilter(
                                            label: 'Album',
                                            onTap: () {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
