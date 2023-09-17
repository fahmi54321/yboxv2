import 'package:flutter/material.dart';
import 'package:yboxv2/pages/register/pengisian_page.dart';
import 'package:yboxv2/pages/register/pilih_leader_page.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class RegisterState extends ChangeNotifier {
  BuildContext context;

  bool isLoading = false;
  bool isCompleted = false;

  int currentStep = 0;

  int? selectLeader;

  RegisterState({
    required this.context,
  });

  String setTextButton({
    required bool isLastStep,
  }) {
    if (isLastStep == true) {
      return 'Simpan';
    } else {
      return 'Selanjutnya';
    }
  }

  List<Step> listSteps() {
    return [
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: vText(
          'Pengisian',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: primaryColor,
        ),
        content: LimitedBox(
          maxHeight: MediaQuery.of(context).size.height * 0.55,
          child: PengisianPage(),
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: vText(
          'Leader',
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: primaryColor,
        ),
        content: LimitedBox(
          maxHeight: MediaQuery.of(context).size.height * 0.55,
          child: PilihLeaderPage(
            state: this,
          ),
        ),
      ),
    ];
  }
}
