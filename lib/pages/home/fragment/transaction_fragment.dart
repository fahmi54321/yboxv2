import 'package:flutter/material.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/resource/CPColors.dart';
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
      body: Padding(
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
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
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
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: green3,
                            child: Icon(
                              Icons.done_outline_rounded,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: vText(
                                          'Member name',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: vText(
                                          'User Test',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: vText(
                                          'Account name',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: vText(
                                          'User Test',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: vText(
                                          'Request date',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: vText(
                                          '31 Aug 2023, 05:12',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16),
                                        child: vText(
                                          'Amount',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: vText(
                                          'Rp. 1.796.198,18',
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
                          IconButton(
                            icon: const Icon(
                              Icons.print,
                              size: 25,
                            ),
                            color: green1,
                            onPressed: () async {},
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
