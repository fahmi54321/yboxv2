import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/forms/add_akun_bank_page.dart';
import 'package:yboxv2/pages/home/fragment/akun_bank_state.dart';
import 'package:yboxv2/pages/widget/dialog_action.dart';
import 'package:yboxv2/pages/home/utils/utils_style.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_dialog.dart';
import 'package:yboxv2/widget/v_text.dart';

class AkunBankFragment extends StatefulWidget {
  static const route = 'akun-bank-fragment';
  const AkunBankFragment({super.key});

  @override
  _AkunBankFragment createState() => _AkunBankFragment();
}

class _AkunBankFragment extends State<AkunBankFragment> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AkunBankState(context: context),
      child: Consumer(builder: (BuildContext context, AkunBankState state, _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            title: vText(
              'Bank',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          backgroundColor: primaryColor.withOpacity(0.03),
          body: state.isLoading
              ? Container()
              : ListView.builder(
                  itemCount: state.listAkunBank.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = state.listAkunBank[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 10.0,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 17.0,
                        horizontal: 17.0,
                      ),
                      decoration: UtilsStyle.decorationGradientWhite2(
                        context: context,
                        radius: 5.0,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          vText(
                            'Nama Akun',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          vText(
                            item.namaAkun,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(height: 8),
                          vText(
                            'Nama Bank',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          vText(
                            item.bank?.name ?? '-',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          const SizedBox(height: 8),
                          vText(
                            'No Rek',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          vText(
                            item.noRek,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 30.0,
                                child: TextButton(
                                  onPressed: () async {
                                    final value = await showDialog1(
                                      context: context,
                                      widget: const DialogAction(
                                        isHapus: false,
                                      ),
                                    );

                                    if (value is bool) {
                                      if (value) {
                                        // edit
                                        WidgetsBinding.instance
                                            .addPostFrameCallback(
                                          (timeStamp) {
                                            showDialog1(
                                              context: context,
                                              widget: AddAkunBankPage(
                                                dataBank: item,
                                              ),
                                            ).then(
                                              (value) {
                                                if (value is bool) {
                                                  if (value) {
                                                    WidgetsBinding.instance
                                                        .addPostFrameCallback(
                                                      (timeStamp) {
                                                        state.init();
                                                      },
                                                    );
                                                  }
                                                }
                                              },
                                            );
                                          },
                                        );
                                      }
                                    }
                                  },
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.edit,
                                        color: primaryColor,
                                        size: 15.0,
                                      ),
                                      const SizedBox(width: 4.0),
                                      vText(
                                        'Edit',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        color: primaryColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10.0),
                              SizedBox(
                                height: 30.0,
                                child: TextButton(
                                  onPressed: () {
                                    showDialog1(
                                      context: context,
                                      widget: const DialogAction(
                                        isHapus: true,
                                      ),
                                    ).then((value) {
                                      if (value is bool) {
                                        if (value) {
                                          // hapus
                                          state.hapusBank(item.id);
                                        }
                                      }
                                    });
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: red1.withOpacity(0.10),
                                    surfaceTintColor: red1.withOpacity(0.10),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    padding: const EdgeInsets.all(0.0),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.delete,
                                        color: red1,
                                        size: 15.0,
                                      ),
                                      const SizedBox(width: 4.0),
                                      vText(
                                        'Hapus',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        color: red1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: FloatingActionButton.small(
              onPressed: () {
                showDialog1(
                  context: context,
                  widget: AddAkunBankPage(),
                ).then((value) {
                  if (value is bool) {
                    if (value) {
                      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                        state.init();
                      });
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
