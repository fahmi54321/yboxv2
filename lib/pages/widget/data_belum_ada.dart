import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class DataBelumAda extends StatelessWidget {
  const DataBelumAda({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/image/img_empty.jpg'),
        vText(
          'Data belum ada',
          color: primaryColor,
          fontSize: 20.0,
        ),
      ],
    );
  }
}
