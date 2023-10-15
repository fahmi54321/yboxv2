// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/anim/animation_details_album.dart';
import 'package:yboxv2/models/album/details_album_res.dart';
import 'package:yboxv2/pages/forms/form_album_audio_video_page.dart';
import 'package:yboxv2/pages/home/details/details_album_state.dart';
import 'package:yboxv2/pages/home/details/utils/utils_details.dart';
import 'package:yboxv2/pages/home/details/widget/user_details.dart';
import 'package:yboxv2/pages/home/fragment/shimer/details_shimer.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/pages/home/widget/item_details.dart';
import 'package:yboxv2/pages/widget/dialog_action.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_dialog.dart';
import 'package:yboxv2/widget/v_text.dart';

class ArgsDetailsAlbum {
  final String id;
  ArgsDetailsAlbum({
    required this.id,
  });
}

class DetailsAlbumPage extends StatefulWidget {
  final ArgsDetailsAlbum args;
  static const String route = 'details_album_page';

  const DetailsAlbumPage({
    super.key,
    required this.args,
  });

  @override
  DetailsAlbumPageState createState() => DetailsAlbumPageState();
}

class DetailsAlbumPageState extends State<DetailsAlbumPage>
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
      create: (_) => DetailsAlbumState(
        id: widget.args.id,
        context: context,
      ),
      child: Consumer(
        builder: (BuildContext context, DetailsAlbumState state, _) {
          return state.isLoading
              ? const Scaffold(
                  body: DetailsShimer(),
                )
              : DetailsAlbum(
                  state: state,
                  controller: _controller,
                );
        },
      ),
    );
  }
}

class DetailsAlbum extends StatefulWidget {
  final AnimationController controller;
  final AnimationDetailsAlbum animation;
  final DetailsAlbumState state;
  DetailsAlbum({
    super.key,
    required this.state,
    required this.controller,
  }) : animation = AnimationDetailsAlbum(
          controller: controller,
        );

  @override
  State<DetailsAlbum> createState() => _DetailsAlbumState();
}

class _DetailsAlbumState extends State<DetailsAlbum> {
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
                                  url: widget.state.dataAlbum?.cover ?? '',
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
                                          widget.state.dataAlbum
                                                  ?.releaseTitle ??
                                              '-',
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
                                    widget.state.dataAlbum?.releaseTitle ?? '-',
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
                                    widget.state.dataAlbum?.upc.toString() ??
                                        '-',
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Opacity(
                              opacity: widget.animation.addedOnOpacity.value,
                              child: ItemDetails(
                                leftLabel: 'Added on',
                                rightLabel:
                                    widget.state.dataAlbum?.releasedDate ?? '-',
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
                                        widget.state.dataAlbum?.user?.image,
                                  ),
                                  const SizedBox(width: 5.0),
                                  vText(
                                    widget.state.dataAlbum?.user
                                            ?.completeName ??
                                        '-',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.0,
                                    color: primaryColor,
                                  ),
                                ],
                              ),
                            ),
                            Opacity(
                              opacity: widget.animation.iconUserOpacity.value,
                              child: Visibility(
                                visible: widget.state.loginRes?.level == 3,
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8.0),
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
                                            FormAlbumAudioVideoPage.route,
                                            arguments:
                                                ArgsFormAlbumAudioVideoPage(
                                              fromCode: 'album',
                                              dataAlbum: widget.state.dataAlbum,
                                            ),
                                          ).then((value) {
                                            debugPrint('is refresh $value');
                                            if (value is bool) {
                                              if (value) {
                                                WidgetsBinding.instance
                                                    .addPostFrameCallback(
                                                        (timeStamp) {
                                                  widget.state
                                                      .getDetailsAlbum();
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
                              ),
                            ),
                            Opacity(
                              opacity: widget.animation.iconUserOpacity.value,
                              child: Visibility(
                                visible: widget.state.loginRes?.level == 2 &&
                                    widget.state.dataAlbum?.isCheck == 0,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                  ),
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
                                      InkWell(
                                        onTap: widget.state.isLoadingApproved
                                            ? null
                                            : () {
                                                showDialog1(
                                                  context: context,
                                                  widget: const DialogAction(
                                                    action: 'terima',
                                                    isHapus: true,
                                                  ),
                                                ).then((value) {
                                                  if (value is bool) {
                                                    if (value) {
                                                      // terima
                                                      widget.state
                                                          .approveAlbum();
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
                                              'assets/icon/ic_done.svg'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: widget.animation.iconUserOpacity.value,
                              child: Visibility(
                                visible: widget.state.loginRes?.level == 2 &&
                                    widget.state.dataAlbum?.isCheck == 0,
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8.0),
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
                                      InkWell(
                                        onTap: widget.state.isLoadingReject
                                            ? null
                                            : () {
                                                showDialog1(
                                                  context: context,
                                                  widget: const DialogAction(
                                                    action: 'tolak',
                                                    isHapus: true,
                                                  ),
                                                ).then((value) {
                                                  if (value is bool) {
                                                    if (value) {
                                                      // terima
                                                      widget.state
                                                          .rejectAlbum();
                                                    }
                                                  }
                                                });
                                              },
                                        child: Container(
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
                                data: widget.state.dataAlbum,
                              )),
                              SingleChildScrollView(
                                child: buildDetailsTracks(
                                  context: context,
                                  data: widget.state.dataAlbum,
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
    required DetailsAlbumRes? data,
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
            rightLabel: data?.releasedDate,
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
    required DetailsAlbumRes? data,
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
            rightWidget: Row(
              children: [
                Visibility(
                  visible: widget.state.currentProgressViewInt > 0 &&
                      widget.state.currentProgressViewInt < 100,
                  child: Row(
                    children: [
                      vText(
                        widget.state.currentProgressView,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: red1,
                      ),
                      const SizedBox(width: 4.0),
                      SizedBox(
                        width: 20.0,
                        height: 20.0,
                        child: CircularProgressIndicator(
                          value: widget.state.currentProgress(0),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 4.0),
                InkWell(
                  splashColor: primaryColor2,
                  borderRadius: BorderRadius.circular(5.0),
                  onTap: widget.state.isLoadingDownload
                      ? null
                      : () async {
                          var status = await Permission.storage.status;
                          if (!status.isGranted) {
                            await Permission.storage.request();
                          }
                          if (status.isGranted) {
                            widget.state.download(
                              index: 0,
                              urlDownload: Utils.convertImage(
                                url: data?.trackId?.cover ?? '',
                              ),
                            );
                          }
                        },
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
