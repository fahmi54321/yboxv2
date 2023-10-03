import 'dart:async';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:yboxv2/models/count/count_amount_res.dart';
import 'package:yboxv2/models/invoice/invoice_res.dart';
import 'package:yboxv2/models/transaction/transaction_res.dart';
import 'package:yboxv2/network/http_count.dart';
import 'package:yboxv2/network/http_transaksi.dart';
import 'package:yboxv2/pages/home/fragment/invoice/pdf__invoice_api.dart';
import 'package:yboxv2/pages/home/fragment/invoice/pdf_api.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class TransactionState extends ChangeNotifier {
  BuildContext context;

  TransactionRes? transactionRes;

  bool isLoadingCekAmount = false;
  bool isLoadingInvoice = false;

  int jmlCekReq = 0;

  CountAmountRes? countAmount;

  InvoiceRes invoiceRes = const InvoiceRes(
    labelImage: '',
    labelName: '',
    invNo: 0,
    paymentMethod: '',
    accountName: '',
    email: '',
    bank: '',
    nameOnBank: '',
    noRek: '',
    invoiceDate: '',
    invoiceCreate: '',
    amount: '',
    id: '',
  );

  TransactionState({required this.context}) {
    init();
  }

  final PagingController<int, DataTransactionRes> pagingController =
      PagingController(firstPageKey: 1);

  init() async {
    pagingController.addPageRequestListener((pageKey) {
      getTransaction(pageKey);
    });

    getAmount();
  }

  Future<void> pullRefresh() async {
    pagingController.refresh();
  }

  Future<void> getTransaction(int page) async {
    try {
      final resStep1 =
          await HTTPTransactionService().getTransaction(page: page);

      resStep1.fold(
        (e) async {
          debugPrint(e);
        },
        (cat) async {
          final isLastPage = cat.data.length < cat.pagination.perPage;
          if (isLastPage) {
            pagingController.appendLastPage(cat.data);
          } else {
            final nextPageKey = page + 1;

            pagingController.appendPage(cat.data, nextPageKey);
          }
        },
      );
    } catch (error) {
      debugPrint('$error');
      pagingController.error = error;
    }
  }

  Future<void> getAmount() async {
    try {
      isLoadingCekAmount = true;
      notifyListeners();

      final resStep1 = await HTTPCountService().countAmount();

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoadingCekAmount = false;
          notifyListeners();
        },
        (cat) async {
          countAmount = cat;
          isLoadingCekAmount = false;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoadingCekAmount = false;
      notifyListeners();
    }
  }

  void getInvoice({required String idTrans}) async {
    isLoadingInvoice = true;
    notifyListeners();

    final resStep1 = await HTTPTransactionService().invoice(id: idTrans);

    resStep1.fold(
      (e) async {
        isLoadingInvoice = false;
        notifyListeners();

        debugPrint(e);
      },
      (cat) async {
        invoiceRes = cat;

        SavePdf savePdf = await PdfInvoiceApi.generate(cat);

        isLoadingInvoice = false;
        notifyListeners();

        debugPrint('${savePdf.file}');

        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          PdfApi.openPdf(
            context,
            savePdf,
            cat,
          );
        });
      },
    );
  }
}
