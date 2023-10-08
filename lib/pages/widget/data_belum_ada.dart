import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class DataBelumAda extends StatelessWidget {
  final String? deskripsi;
  const DataBelumAda({
    super.key,
    this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/image/img_empty.jpg'),
        vText(
          deskripsi ?? 'Data belum ada',
          color: primaryColor,
          fontSize: 20.0,
        ),
      ],
    );
  }
}
