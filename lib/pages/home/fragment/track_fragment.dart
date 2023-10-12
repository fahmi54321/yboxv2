import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/track/track_res.dart';
import 'package:yboxv2/pages/forms/form_track_page.dart';
import 'package:yboxv2/pages/home/details/details_track_page.dart';
import 'package:yboxv2/pages/home/fragment/shimer/list_shimer.dart';
import 'package:yboxv2/pages/home/fragment/track_fragment_state.dart';
import 'package:yboxv2/pages/home/widget/item_track.dart';
import 'package:yboxv2/pages/widget/data_belum_ada.dart';
import 'package:yboxv2/pages/widget/loading_pagin.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/widget/v_text.dart';

class TrackFragment extends StatefulWidget {
  const TrackFragment({super.key});

  @override
  TrackFragmentState createState() => TrackFragmentState();
}

class TrackFragmentState extends State<TrackFragment> {
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
      create: (_) => TrackFragmentStates(context: context),
      child: Consumer(
          builder: (BuildContext context, TrackFragmentStates state, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: vText(
              'Track',
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
                            'List Track anda',
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
                                  FormTrackPage.route,
                                  arguments: ArgsFormTrackPage(),
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
                                PagedChildBuilderDelegate<DataTrackRes>(
                              itemBuilder: (context, item, index) {
                                return ItemTrack(
                                  item: item,
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      DetailsTrackPage.route,
                                      arguments: ArgsDetailsTrack(id: item.id),
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
