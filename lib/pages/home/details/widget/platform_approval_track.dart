// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/home/details/utils/utils_details.dart';
import 'package:yboxv2/pages/home/details/widget/platform_approval_track_state.dart';

import 'package:yboxv2/pages/home/fragment/shimer/list_shimer.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/pages/widget/data_belum_ada.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_text.dart';

class PlatformApprovalTrack extends StatefulWidget {
  final String idDetails;
  final int statusFromDetails;
  const PlatformApprovalTrack({
    Key? key,
    required this.idDetails,
    required this.statusFromDetails,
  }) : super(key: key);

  @override
  State<PlatformApprovalTrack> createState() => _PlatformApprovalTrackState();
}

class _PlatformApprovalTrackState extends State<PlatformApprovalTrack> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PlatformApprovalTrackState(
        idDetails: widget.idDetails,
        statusFromDetails: widget.statusFromDetails,
        context: context,
      ),
      child: Consumer(
        builder: (BuildContext context, PlatformApprovalTrackState state, _) {
          return DefaultTabController(
            length: 2,
            child: Container(
              color: Theme.of(context).colorScheme.onPrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Material(
                    elevation: 2.0,
                    child: TabBar(
                      tabs: const [
                        Tab(text: 'Platform'),
                        Tab(text: 'Platform Proses'),
                      ],
                      indicatorColor: Theme.of(context).colorScheme.primary,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 250.0,
                    child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        SingleChildScrollView(
                            child: buildPlatform(
                          context: context,
                          state: state,
                        )),
                        SingleChildScrollView(
                          child: buildPlatformProcess(
                            context: context,
                            state: state,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildPlatform({
    required BuildContext context,
    required PlatformApprovalTrackState state,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 0.0,
      ),
      padding: const EdgeInsets.all(10.0),
      decoration: UtilsStyle.decorationGradientWhite(context: context),
      child: state.isLoadingList
          ? const ListShimer()
          : state.listPlatform.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListView.builder(
                      itemCount: state.listPlatform.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        final item = state.listPlatform[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 4.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(
                                      0.40,
                                    ),
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                Utils.convertImage2(
                                  url: item.gambar,
                                ),
                                width: 74.0,
                                height: 46.0,
                                frameBuilder: (context, child, frame,
                                    wasSynchronouslyLoaded) {
                                  return child;
                                },
                                errorBuilder: ((context, error, stackTrace) {
                                  return const SizedBox(
                                    width: 74.0,
                                    height: 46.0,
                                    child: Placeholder(
                                      color: primaryColor,
                                    ),
                                  );
                                }),
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return SizedBox(
                                    width: 74.0,
                                    height: 46.0,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                      ),
                                    ),
                                  );
                                },
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            trailing: widget.statusFromDetails == 0
                                ? Checkbox(
                                    value: item.isChecked,
                                    onChanged: (val) {
                                      setState(() {
                                        item.isChecked = !item.isChecked;
                                      });
                                    },
                                  )
                                : null,
                            title: vText(
                              item.nama,
                              color: black2,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              maxLines: 1,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 15.0),
                    Visibility(
                      visible: widget.statusFromDetails == 0,
                      child: OutlinedButton(
                        onPressed: state.isLoadingSendData
                            ? null
                            : () {
                                state.sendTrack();
                              },
                        style: OutlinedButton.styleFrom(
                          alignment: Alignment.center,
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              5.0,
                            ),
                          ),
                          side: const BorderSide(color: primaryColor),
                        ),
                        child: vText(
                          'Kirim Data',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                          color: white1,
                        ),
                      ),
                    ),
                  ],
                ),
    );
  }

  Widget buildPlatformProcess({
    required BuildContext context,
    required PlatformApprovalTrackState state,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 0.0,
      ),
      padding: const EdgeInsets.all(10.0),
      decoration: UtilsStyle.decorationGradientWhite(context: context),
      child: state.isLoadingList
          ? const ListShimer()
          : state.listPlatformProses.isEmpty
              ? const Center(child: DataBelumAda())
              : ListView.builder(
                  itemCount: state.listPlatformProses.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final item = state.listPlatformProses[index];
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 4.0,
                            top: 4.0,
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(
                                      0.40,
                                    ),
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                Utils.convertImage2(
                                  url: item.gambar,
                                ),
                                width: 74.0,
                                height: 46.0,
                                frameBuilder: (context, child, frame,
                                    wasSynchronouslyLoaded) {
                                  return child;
                                },
                                errorBuilder: ((context, error, stackTrace) {
                                  return const SizedBox(
                                    width: 74.0,
                                    height: 46.0,
                                    child: Placeholder(
                                      color: primaryColor,
                                    ),
                                  );
                                }),
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return SizedBox(
                                    width: 74.0,
                                    height: 46.0,
                                    child: Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                      ),
                                    ),
                                  );
                                },
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            title: vText(
                              item.nama,
                              color: black2,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              maxLines: 1,
                            ),
                            isThreeLine: true,
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                vText(
                                  'Tanggal Antrian : ${item.tanggalAntrian ?? '-'}',
                                  color: black2,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  maxLines: 1,
                                ),
                                const SizedBox(height: 4.0),
                                vText(
                                  'Tanggal Selesai : ${item.tanggalSelesai ?? '-'}',
                                  color: black2,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 8.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                              ),
                              color: UtilsDetails.getBgColor(
                                status: item.status,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  UtilsDetails.getIconStatus(
                                    status: item.status,
                                  ),
                                  color: UtilsDetails.getTextColor(
                                    status: item.status,
                                    context: context,
                                  ),
                                  size: 10,
                                ),
                                const SizedBox(width: 4.0),
                                vText(
                                  UtilsDetails.getTextStatus(
                                    status: item.status,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: UtilsDetails.getTextColor(
                                    status: item.status,
                                    context: context,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
    );
  }
}
