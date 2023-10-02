import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/models/transaction/transaction_res.dart';
import 'package:yboxv2/pages/forms/add_transaction_page.dart';
import 'package:yboxv2/pages/home/fragment/transaction_fragment_state.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_dialog.dart';
import 'package:yboxv2/widget/v_text.dart';

class TransactionFragment extends StatefulWidget {
  static const route = 'transaction-fragment';
  const TransactionFragment({super.key});

  @override
  _TransactionFragment createState() => _TransactionFragment();
}

class _TransactionFragment extends State<TransactionFragment> {
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
                  vText(
                    'Rp. 1.796.198,18',
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
                          itemBuilder: (context, item, index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              padding: const EdgeInsets.symmetric(
                                vertical: 17.0,
                                horizontal: 12.0,
                              ),
                              decoration: UtilsStyle.decorationGradientWhite(
                                context: context,
                                radius: 5.0,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: state.statusIconColorTrans(
                                      item.status,
                                    ),
                                    child: state.statusIconItemTrans(
                                      item.status,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 24.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 8),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16),
                                                child: vText(
                                                  'Member name',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0),
                                                child: vText(
                                                  item.member,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16),
                                                child: vText(
                                                  'Account name',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0),
                                                child: vText(
                                                  item.nameOnBank,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16),
                                                child: vText(
                                                  'Request date',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0),
                                                child: vText(
                                                  item.requestDate,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16),
                                                child: vText(
                                                  'Amount',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 16.0),
                                                child: vText(
                                                  item.amount,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: item.status == 2,
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.print,
                                        size: 25,
                                      ),
                                      color: green1,
                                      onPressed: () async {
                                        state.getInvoice(
                                          idTrans: item.id,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
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
                  widget: AddTransactionPage(),
                );
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
