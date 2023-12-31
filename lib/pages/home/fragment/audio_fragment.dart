import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/models/audio/audio_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/pages/forms/form_album_audio_video_page.dart';
import 'package:yboxv2/pages/home/details/details_audio_page.dart';
import 'package:yboxv2/pages/home/fragment/audio_fragment_state.dart';
import 'package:yboxv2/pages/home/fragment/shimer/list_shimer.dart';
import 'package:yboxv2/pages/home/widget/item_audio.dart';
import 'package:yboxv2/pages/widget/data_belum_ada.dart';
import 'package:yboxv2/pages/widget/loading_pagin.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/widget/v_text.dart';

class AudioFragment extends StatefulWidget {
  static const route = 'audio-fragment';
  const AudioFragment({super.key});

  @override
  CartFragmentState createState() => CartFragmentState();
}

class CartFragmentState extends State<AudioFragment> {
  bool isLoading = true;

  LoginRes? loginRes;

  @override
  void initState() {
    super.initState();

    init();
  }

  void init() async {
    UtilsLoading.showLoading(message: 'Loading');

    var dataToken = await SharedPreferencesUtils.getLoginPreference();

    setState(() {
      loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
      isLoading = false;
    });

    UtilsLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AudioFragmentState(context: context),
      child: Consumer(
          builder: (BuildContext context, AudioFragmentState state, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            title: vText(
              'Ringtone',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          body: isLoading
              ? Container()
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 16.0,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          vText(
                            'List Ringtone anda',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: primaryColor,
                          ),
                          Visibility(
                            visible: loginRes?.level == 3,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  FormAlbumAudioVideoPage.route,
                                  arguments: ArgsFormAlbumAudioVideoPage(
                                    fromCode: 'audio',
                                  ),
                                ).then((value) {
                                  debugPrint('is refresh $value');
                                  if (value is bool) {
                                    if (value) {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((timeStamp) {
                                        state.pagingController.refresh();
                                      });
                                    }
                                  }
                                });
                              },
                              splashColor: primaryColor.withOpacity(0.50),
                              borderRadius: BorderRadius.circular(10.0),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10.0,
                                    horizontal: 13.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      ),
                                      const SizedBox(width: 4.0),
                                      vText(
                                        'Add',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 13.0),
                      Expanded(
                        child: RefreshIndicator(
                          onRefresh: state.pullRefresh,
                          child: PagedListView(
                            pagingController: state.pagingController,
                            builderDelegate:
                                PagedChildBuilderDelegate<DataAudioRes>(
                              itemBuilder: (context, item, index) {
                                return ItemAudio(
                                  item: item,
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      DetailsAudioPage.route,
                                      arguments: ArgsDetailsAudio(id: item.id),
                                    );
                                  },
                                );
                              },
                              firstPageProgressIndicatorBuilder: (_) {
                                return const ListShimer();
                              },
                              noItemsFoundIndicatorBuilder: (context) =>
                                  const DataBelumAda(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        );
      }),
    );
  }
}
