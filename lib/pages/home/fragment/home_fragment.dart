import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yboxv2/pages/home/widget/category.dart';
import 'package:yboxv2/pages/home/widget/grafik_filter.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: primaryColor,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: primaryColor,
            leading: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            largeTitle: vText(
              'Hi, Vita !',
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 24.0,
            ),
            middle: vText(
              'Selamat datang',
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 12.0,
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
                      vText(
                        'Categories',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: black2,
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        children: const <Widget>[
                          Category(
                            icon: 'assets/icon/ic_album.png',
                            vector: 'assets/icon/ic_vector_album.png',
                            label: 'Album',
                            total: '45',
                            isOffsetRight: false,
                          ),
                          Category(
                            icon: 'assets/icon/ic_album.png',
                            vector: 'assets/icon/ic_vector_album.png',
                            label: 'Album',
                            total: '45',
                            isOffsetRight: true,
                          ),
                          Category(
                            icon: 'assets/icon/ic_ringtone.png',
                            vector: 'assets/icon/ic_vector_ringtone.png',
                            label: 'Ringtone',
                            total: '3',
                            isOffsetRight: false,
                          ),
                          Category(
                            icon: 'assets/icon/ic_music.png',
                            vector: 'assets/icon/ic_vector_musik.png',
                            label: 'Track',
                            total: '150',
                            isOffsetRight: true,
                          ),
                          Category(
                            icon: 'assets/icon/ic_money.png',
                            vector: 'assets/icon/ic_vector_money.png',
                            label: 'Amount',
                            total: 'Rp. 150.000',
                            isOffsetRight: false,
                            isAmount: true,
                          ),
                          Category(
                            icon: 'assets/icon/ic_progress.png',
                            vector: 'assets/icon/ic_vector_progress.png',
                            label: 'Progress',
                            total: '4',
                            isOffsetRight: true,
                          ),
                        ],
                      ),
                      const SizedBox(height: 26.0),
                      Row(
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.systemYellow,
            border: Border(
              bottom: BorderSide(
                color: brightness == Brightness.light
                    ? CupertinoColors.black
                    : CupertinoColors.white,
              ),
            ),
            // The middle widget is visible in both collapsed and expanded states.
            middle: const Text('Contacts Group'),
            // When the "middle" parameter is implemented, the largest title is only visible
            // when the CupertinoSliverNavigationBar is fully expanded.
            largeTitle: const Text('Family'),
          ),
          const SliverFillRemaining(
            child: Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Drag me up', textAlign: TextAlign.center),
                      // When the "leading" parameter is omitted on a route that has a previous page,
                      // the back button is automatically added to the leading position.
                      Text('Tap on the leading button to navigate back',
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
