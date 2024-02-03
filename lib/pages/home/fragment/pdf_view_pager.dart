import 'dart:io';

import 'package:yboxv2/models/invoice/invoice_res.dart';
import 'package:yboxv2/pages/home/fragment/invoice/pdf_api.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/widget/v_text.dart';
// import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:permission_handler/permission_handler.dart';

class PDFViewPager extends StatefulWidget {
  final SavePdf savePdf;
  final InvoiceRes invoiceRes;

  const PDFViewPager({
    Key? key,
    required this.savePdf,
    required this.invoiceRes,
  }) : super(key: key);

  @override
  _PDFViewPagerState createState() => _PDFViewPagerState();
}

class _PDFViewPagerState extends State<PDFViewPager> {
  bool isLoadingButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: vText(
          'transaction${widget.invoiceRes.id}.pdf',
          color: Theme.of(context).colorScheme.onPrimary,
          maxLines: 1,
        ),
        actions: [
          IconButton(
            onPressed: () async {
              setState(() {
                isLoadingButton = true;
              });
              bool isSave = await savePdfFile(widget.savePdf.bytes);

              setState(() {
                isLoadingButton = false;
              });

              if (isSave == true) {
                UtilsLoading.showInfo(
                    message: 'File sudah tersimpan di folder download');
              }
            },
            icon: (isLoadingButton == false)
                ? Icon(
                    Icons.download,
                    color: Theme.of(context).colorScheme.onPrimary,
                  )
                : const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(),
                  ),
          )
        ],
      ),
      body: PDFView(
        filePath: widget.savePdf.file.path,
      ),
    );
  }

  Future<bool> savePdfFile(dynamic bytes) async {
    try {
      var directoryPath = "";

      if (Platform.isAndroid) {
        Map<Permission, PermissionStatus> statuses = await [
          Permission.storage,
          //add more permission to request here.
        ].request();

        if (statuses[Permission.storage]!.isGranted) {
          Directory dir = Directory('/storage/emulated/0/Download');
          directoryPath = dir.path;
        }
      }

      if (directoryPath != "") {
        File saveFile =
            File("$directoryPath/transaction${widget.invoiceRes.id}.pdf");
        await saveFile.writeAsBytes(bytes);

        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  void showFlushBar({
    required IconData icon,
    required Color bgColor,
    required String title,
    required List<String> message,
    required BuildContext context,
  }) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: bgColor,
      duration: const Duration(seconds: 3),
      titleText: Row(
        children: [
          Icon(
            // Icons.add_alert_rounded,
            icon,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          const SizedBox(width: 5),
          vText(
            title,
            fontSize: 20,
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
      messageText: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: message.length,
          itemBuilder: (context, index) {
            String msg = message[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: vText(
                msg,
                fontSize: 16,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            );
          }),
    ).show(context);
  }
}
