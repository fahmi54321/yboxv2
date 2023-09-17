import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/home/details/details_video_state.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/pages/home/widget/item_details.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class DetailsVideoPage extends StatefulWidget {
  static const String route = 'details_video_page';

  const DetailsVideoPage({super.key});

  @override
  DetailsVideoPageState createState() => DetailsVideoPageState();
}

class DetailsVideoPageState extends State<DetailsVideoPage> {
  late DetailsVideoState state;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return ChangeNotifierProvider(
      create: (_) => DetailsVideoState(
        context: context,
      ),
      child: Consumer(
        builder: (BuildContext context, DetailsVideoState state, _) {
          this.state = state;

          return DefaultTabController(
            length: 2,
            child: SafeArea(
              child: Scaffold(
                body: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image/the_band_party.png',
                            width: width,
                            height: width * 1.05,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            left: 14.0,
                            top: 14.0,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(4.0),
                              splashColor: primaryColor2,
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_left_rounded,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  const SizedBox(width: 15.0),
                                  vText(
                                    'ISTJ - NCT DREAM',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: UtilsStyle.decorationGradientWhite(
                        context: context,
                      ),
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        children: [
                          ItemDetails(
                            leftLabel: 'Release',
                            rightWidget: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: primaryColor2,
                              ),
                              child: vText(
                                'SM Entertaiment',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: grey9,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          const ItemDetails(
                            leftLabel: 'UPC',
                            rightLabel: '25',
                          ),
                          const SizedBox(height: 8.0),
                          const ItemDetails(
                            leftLabel: 'Added on',
                            rightLabel: '31 Agust 2022',
                            fontColorRightLabel: black3,
                          ),
                          const SizedBox(height: 8.0),
                          Row(
                            children: [
                              Container(
                                width: 30.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: Image.asset(
                                      'assets/image/the_band_party.png',
                                    ).image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5.0),
                              vText(
                                'User Test',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: primaryColor,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                        ],
                      ),
                    ),
                    Material(
                      elevation: 2.0,
                      child: TabBar(
                        tabs: const [
                          Tab(text: 'OVERVIEW'),
                          Tab(text: 'TRACKS'),
                        ],
                        indicatorColor: Theme.of(context).colorScheme.primary,
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          SingleChildScrollView(child: buildDetailsOverview()),
                          SingleChildScrollView(child: buildDetailsTracks()),
                        ],
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

  Widget buildDetailsOverview() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      padding: const EdgeInsets.all(10.0),
      decoration: UtilsStyle.decorationGradientWhite(context: context),
      child: const Column(
        children: <Widget>[
          ItemDetails(
            leftLabel: 'Title Version',
            rightLabel: 'Like We Just Meet',
          ),
          SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'UPC',
            rightLabel: '25',
          ),
          SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Label Name',
            rightLabel: 'Admin Test',
          ),
          SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: '(P)',
            rightLabel: 'P Copy',
          ),
          SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: '(C)',
            rightLabel: 'C Copy',
          ),
          SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Release Date',
            rightLabel: '2022 - 08 - 03',
          ),
          SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Genre',
            rightLabel: 'K-Pop, Singer',
          ),
          SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Language',
            rightLabel: 'Korean',
          ),
        ],
      ),
    );
  }

  Widget buildDetailsTracks() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      padding: const EdgeInsets.all(10.0),
      decoration: UtilsStyle.decorationGradientWhite(context: context),
      child: Column(
        children: <Widget>[
          const ItemDetails(
            leftLabel: 'Track Name',
            rightLabel: 'Like We Just Meet',
          ),
          const SizedBox(height: 8.0),
          const ItemDetails(
            leftLabel: 'Artist',
            rightLabel: 'NCT DREAM',
          ),
          const SizedBox(height: 8.0),
          const ItemDetails(
            leftLabel: 'ISRC',
            rightLabel: '3',
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Audio',
            rightWidget: InkWell(
              splashColor: primaryColor2,
              borderRadius: BorderRadius.circular(5.0),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(
                  4.0,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: primaryColor,
                  ),
                  child: vText(
                    'Download File',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onPrimary,
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
