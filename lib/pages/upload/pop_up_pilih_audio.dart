import 'package:flutter/material.dart';
import 'package:yboxv2/widget/v_text.dart';
import 'package:yboxv2/widget/v_widgets.dart';

Future<int> showPilihAudio(BuildContext context) async {
  int indexs = 0;
  await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(2.0), topLeft: Radius.circular(2.0)),
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close)),
                      Expanded(
                        child: Center(
                          child: vText(
                            'Pilih Audio atau Record',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  VCustomBoxWidget(
                    widget: Row(
                      children: [
                        Icon(Icons.record_voice_over,
                            color: Theme.of(context).colorScheme.primary),
                        const SizedBox(width: 14),
                        Expanded(
                          child: vText('Ambil Audio dari Perekaman',
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    radius: 15,
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontColor: Theme.of(context).colorScheme.onPrimary,
                    borderColor: Theme.of(context).colorScheme.onPrimary,
                    paddingHorizontal: 8,
                    paddingVertical: 5,
                    onTap: () {
                      setState(() {
                        indexs = 1;
                      });
                      Navigator.of(context).pop(indexs);
                    },
                  ),
                  const SizedBox(height: 10),
                  VCustomBoxWidget(
                    widget: Row(
                      children: [
                        const Icon(Icons.list_outlined, color: Colors.green),
                        const SizedBox(width: 14),
                        Expanded(
                          child: vText(
                            'Ambil Audio dari Penyimpanan Internal',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    radius: 15,
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontColor: Theme.of(context).colorScheme.onPrimary,
                    borderColor: Theme.of(context).colorScheme.onPrimary,
                    paddingHorizontal: 8,
                    paddingVertical: 5,
                    onTap: () {
                      setState(() {
                        indexs = 2;
                      });
                      Navigator.of(context).pop(indexs);
                    },
                  ),
                ],
              ),
            ),
          );
        });
      });

  return indexs;
}
