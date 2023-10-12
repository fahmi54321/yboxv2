import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/models/transaction/transaction_res.dart';
import 'package:yboxv2/pages/forms/add_transaction_page.dart';
import 'package:yboxv2/pages/home/fragment/shimer/list_shimer.dart';
import 'package:yboxv2/pages/home/fragment/transaction_fragment_state.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/pages/widget/data_belum_ada.dart';
import 'package:yboxv2/pages/widget/loading_pagin.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_dialog.dart';
import 'package:yboxv2/widget/v_text.dart';

class TransactionFragment extends StatefulWidget {
  static const route = 'transaction-fragment';
  const TransactionFragment({super.key});

  @override
  _TransactionFragment createState() => _TransactionFragment();
}

class _TransactionFragment extends State<TransactionFragment>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.repeat();
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TransactionState(context: context),
      child:
          Consumer(builder: (BuildContext context, TransactionState state, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            title: vText(
              'Transaksi',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          backgroundColor: primaryColor.withOpacity(0.03),
          body: RefreshIndicator(
            onRefresh: state.pullRefresh,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  vText(
                    'Your balance',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                  const SizedBox(height: 10),
                  state.isLoadingCekAmount
                      ? LinearProgressIndicator(value: animation.value)
                      : vText(
                          state.countAmount?.rp ?? '-',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: black2,
                        ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      child: PagedListView(
                        pagingController: state.pagingController,
                        builderDelegate:
                            PagedChildBuilderDelegate<DataTransactionRes>(
                          noItemsFoundIndicatorBuilder: (_) {
                            return const DataBelumAda();
                          },
                          firstPageProgressIndicatorBuilder: (_) {
                            return const ListShimer();
                          },
                          itemBuilder: (context, item, index) {
                            return Stack(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  decoration:
                                      UtilsStyle.decorationGradientWhite2(
                                    context: context,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 17.0,
                                      left: 12.0,
                                      right: 12.0,
                                      top: 24.0,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 10.0),
                                        vText(
                                          'Member name',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        vText(
                                          item.name,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        const SizedBox(height: 8),
                                        vText(
                                          'Account name',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        vText(
                                          item.nameOnBank,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        const SizedBox(height: 8),
                                        vText(
                                          'Request date',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        vText(
                                          item.createdDate,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        const SizedBox(height: 8),
                                        vText(
                                          'Amount',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                        vText(
                                          item.amount,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical: 8.0,
                                    ),
                                    margin: const EdgeInsets.all(4.0),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5.0),
                                        bottomLeft: Radius.circular(5.0),
                                      ),
                                      color: green1,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.done_outline_outlined,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          size: 25,
                                        ),
                                        const SizedBox(width: 4.0),
                                        vText(
                                          'Dibayar',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: item.status == 1,
                                  child: Positioned(
                                    right: 0.0,
                                    top: 0,
                                    child: InkWell(
                                      onTap: () {
                                        state.getInvoice(
                                          idTrans: item.id,
                                        );
                                      },
                                      child: const Icon(
                                        Icons.print,
                                        color: green1,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: FloatingActionButton.small(
              onPressed: () {
                showDialog1(
                  context: context,
                  widget: const AddTransactionPage(),
                ).then((value) {
                  if (value is bool) {
                    if (value) {
                      state.pullRefresh();
                    }
                  }
                });
              },
              backgroundColor: primaryColor,
              child: Icon(
                Icons.add,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        );
      }),
    );
  }
}
