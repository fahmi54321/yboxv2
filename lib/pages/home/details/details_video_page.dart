// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/anim/animation_details_video.dart';
import 'package:yboxv2/models/video/details_video_res.dart';

import 'package:yboxv2/pages/forms/main_form_page.dart';
import 'package:yboxv2/pages/home/details/details_video_state.dart';
import 'package:yboxv2/pages/home/details/utils/utils_details.dart';
import 'package:yboxv2/pages/home/details/widget/user_details.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/pages/home/widget/item_details.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_text.dart';

class ArgsDetailsVideo {
  final String id;
  ArgsDetailsVideo({
    required this.id,
  });
}

class DetailsVideoPage extends StatefulWidget {
  final ArgsDetailsVideo args;
  static const String route = 'details_video_page';

  const DetailsVideoPage({
    super.key,
    required this.args,
  });

  @override
  DetailsVideoPageState createState() => DetailsVideoPageState();
}

class DetailsVideoPageState extends State<DetailsVideoPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1780,
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
      create: (_) => DetailsVideoState(
        id: widget.args.id,
        context: context,
      ),
      child: Consumer(
        builder: (BuildContext context, DetailsVideoState state, _) {
          return state.isLoading
              ? Scaffold(
                  body: Container(),
                )
              : DetailsVideo(
                  state: state,
                  controller: _controller,
                );
        },
      ),
    );
  }
}

class DetailsVideo extends StatefulWidget {
  final AnimationController controller;
  final AnimationDetailsVideo animation;
  final DetailsVideoState state;
  DetailsVideo({
    super.key,
    required this.state,
    required this.controller,
  }) : animation = AnimationDetailsVideo(
          controller: controller,
        );

  @override
  State<DetailsVideo> createState() => _DetailsVideoState();
}

class _DetailsVideoState extends State<DetailsVideo> {
  @override
  void initState() {
    super.initState();
    widget.controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
        animation: widget.animation.controller,
        builder: (BuildContext context, Widget? child) {
          return DefaultTabController(
            length: 2,
            child: SafeArea(
              child: Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        child: Stack(
                          children: [
                            Opacity(
                              opacity: widget.animation.gambarOpacity.value,
                              child: Image.network(
                                Utils.convertImage(
                                  url: widget.state.dataVideo?.cover ?? '',
                                ),
                                width: width,
                                height: width * 1.05,
                                frameBuilder: (context, child, frame,
                                    wasSynchronouslyLoaded) {
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
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                    ),
                                  );
                                },
                                fit: BoxFit.cover,
                              ),
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
                                child: Opacity(
                                  opacity: widget.animation.appBarOpacity.value,
                                  child: Container(
                                    padding: const EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary
                                          .withOpacity(0.40),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.keyboard_arrow_left_rounded,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                        const SizedBox(width: 15.0),
                                        vText(
                                          widget.state.dataVideo?.title ?? '-',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  ),
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
                            Opacity(
                              opacity: widget.animation.releaseOpacity.value,
                              child: ItemDetails(
                                leftLabel: 'Release',
                                rightWidget: Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: primaryColor2,
                                  ),
                                  child: vText(
                                    widget.state.dataVideo?.title ?? '-',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                    color: grey9,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Opacity(
                              opacity: widget.animation.upcOpacity.value,
                              child: ItemDetails(
                                leftLabel: 'UPC',
                                rightLabel:
                                    widget.state.dataVideo?.upc.toString() ??
                                        '-',
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Opacity(
                              opacity: widget.animation.addedOnOpacity.value,
                              child: ItemDetails(
                                leftLabel: 'Added on',
                                rightLabel:
                                    widget.state.dataVideo?.released ?? '-',
                                fontColorRightLabel: black3,
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Opacity(
                              opacity: widget.animation.iconUserOpacity.value,
                              child: Row(
                                children: [
                                  UserDetails(
                                    imageUser:
                                        widget.state.dataVideo?.user?.image,
                                  ),
                                  const SizedBox(width: 5.0),
                                  vText(
                                    widget.state.dataVideo?.user
                                            ?.completeName ??
                                        '-',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: primaryColor,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Opacity(
                              opacity: widget.animation.iconUserOpacity.value,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  vText(
                                    'Edit Data',
                                    color: black2,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    maxLines: 1,
                                  ),
                                  const SizedBox(width: 7.0),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        MainFormPage.route,
                                        arguments: ArgsMainFormPage(
                                          fromCode: 'video',
                                          dataVideo: widget.state.dataVideo,
                                        ),
                                      ).then((value) {
                                        debugPrint('is refresh $value');
                                        if (value is bool) {
                                          if (value) {
                                            WidgetsBinding.instance
                                                .addPostFrameCallback(
                                                    (timeStamp) {
                                              widget.state.getDetailsVideo();
                                              widget.controller.forward();
                                            });
                                          }
                                        }
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(6.0),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: primaryColor,
                                      ),
                                      child: SvgPicture.asset(
                                          'assets/icon/ic_edit.svg'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Opacity(
                              opacity: widget.animation.iconUserOpacity.value,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  vText(
                                    'Terima',
                                    color: black2,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    maxLines: 1,
                                  ),
                                  const SizedBox(width: 7.0),
                                  Container(
                                    padding: const EdgeInsets.all(6.0),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryColor,
                                    ),
                                    child: SvgPicture.asset(
                                        'assets/icon/ic_done.svg'),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Opacity(
                              opacity: widget.animation.iconUserOpacity.value,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  vText(
                                    'Tolak',
                                    color: black2,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    maxLines: 1,
                                  ),
                                  const SizedBox(width: 7.0),
                                  Container(
                                    padding: const EdgeInsets.all(6.0),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: red1,
                                    ),
                                    child: Icon(
                                      Icons.close,
                                      size: 13.0,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                      Opacity(
                        opacity: widget.animation.infoOpacity.value,
                        child: Material(
                          elevation: 2.0,
                          child: TabBar(
                            tabs: const [
                              Tab(text: 'OVERVIEW'),
                              Tab(text: 'TRACKS'),
                            ],
                            indicatorColor:
                                Theme.of(context).colorScheme.primary,
                            unselectedLabelColor: Colors.black,
                            labelColor: Colors.black,
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: widget.animation.infoOpacity.value,
                        child: SizedBox(
                          height: 250.0,
                          child: TabBarView(
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              SingleChildScrollView(
                                  child: buildDetailsOverview(
                                context: context,
                                data: widget.state.dataVideo,
                              )),
                              SingleChildScrollView(
                                child: buildDetailsTracks(
                                  context: context,
                                  data: widget.state.dataVideo,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget buildDetailsOverview({
    required BuildContext context,
    required DetailsVideoRes? data,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      padding: const EdgeInsets.all(10.0),
      decoration: UtilsStyle.decorationGradientWhite(context: context),
      child: Column(
        children: <Widget>[
          ItemDetails(
            leftLabel: 'Title Version',
            rightLabel: data?.titleVersion,
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'UPC',
            rightLabel: data?.upc.toString(),
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Label Name',
            rightLabel: data?.labelName?.completeName,
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: '(P)',
            rightLabel: data?.pCopyright,
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: '(C)',
            rightLabel: data?.cCopyright,
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Release Date',
            rightLabel: data?.released,
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Genre',
            rightLabel: UtilsDetails.gabungGenre(
              genre1: data?.genre1,
              genre2: data?.genre2,
            ),
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Language',
            rightLabel: data?.langId?.name,
          ),
        ],
      ),
    );
  }

  Widget buildDetailsTracks({
    required BuildContext context,
    required DetailsVideoRes? data,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      padding: const EdgeInsets.all(10.0),
      decoration: UtilsStyle.decorationGradientWhite(context: context),
      child: Column(
        children: <Widget>[
          ItemDetails(
            leftLabel: 'Track Name',
            rightLabel: data?.trackId?.trackTitle,
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'Artist',
            rightLabel: data?.trackId?.artisName,
          ),
          const SizedBox(height: 8.0),
          ItemDetails(
            leftLabel: 'ISRC',
            rightLabel: data?.trackId?.isrc.toString(),
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
