import 'dart:async';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:yboxv2/models/invoice/invoice_res.dart';
import 'package:yboxv2/models/transaction/transaction_res.dart';
import 'package:yboxv2/network/http_transaksi.dart';
import 'package:yboxv2/pages/home/fragment/invoice/pdf__invoice_api.dart';
import 'package:yboxv2/pages/home/fragment/invoice/pdf_api.dart';
import 'package:yboxv2/resource/CPColors.dart';

class TransactionState extends ChangeNotifier {
  BuildContext context;

  TransactionRes? transactionRes;
  // final getAmount = gets.Get.find<AmountController>();
  // final cekReq = gets.Get.find<CekReqController>();

  bool isLoadingCekReq = false;
  bool isLoadingInvoice = false;

  int jmlCekReq = 0;

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

  Widget statusIconItemTrans(int status) {
    if (status == 0) {
      // pending
      return Icon(
        Icons.pending,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 40,
      );
    } else if (status == 1) {
      // reject
      return Icon(
        Icons.close,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 40,
      );
    } else if (status == 2) {
      // done
      return Icon(
        Icons.done_outline_outlined,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 40,
      );
    } else {
      return Icon(
        Icons.pending,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 40,
      );
    }
  }

  Color statusIconColorTrans(int status) {
    if (status == 0) {
      // pending
      return yellow1;
    } else if (status == 1) {
      // reject
      return red1;
    } else if (status == 2) {
      // done
      return green1;
    } else {
      return yellow1;
    }
  }
}
