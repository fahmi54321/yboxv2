import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class LoadingPagin extends StatelessWidget {
  final String? deskripsi;
  const LoadingPagin({
    super.key,
    this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 200.0,
          height: 150.0,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.50),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                color: grey15,
              ),
              const SizedBox(height: 6.0),
              vText(
                'Loading...',
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: grey15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
