import 'package:flutter/material.dart';
import 'package:yboxv2/anim/animation_register.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/network/http_auth.dart';
import 'package:yboxv2/pages/register/model/pengisian_model.dart';
import 'package:yboxv2/pages/register/pengisian_page.dart';
import 'package:yboxv2/pages/register/pilih_leader_page.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/utils/utils_validation.dart';
import 'package:yboxv2/widget/v_text.dart';

class RegisterState extends ChangeNotifier {
  final BuildContext context;
  final AnimationRegister animation;

  bool isLoading = false;
  bool isCompleted = false;

  int currentStep = 0;

  LeaderRes? selectLeader;

  DataPengisian? dataPengisian;

  RegisterState({
    required this.context,
    required this.animation,
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
          child: PengisianPage(
            animation: animation,
            getData: (DataPengisian? data) {
              dataPengisian = data;
              notifyListeners();
            },
          ),
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
            getLeader: (LeaderRes? leader) {
              if (leader != null) {
                selectLeader = leader;
                notifyListeners();
              }
            },
          ),
        ),
      ),
    ];
  }

  Future<void> register() async {
    if (dataPengisian == null) {
      UtilsLoading.showInfo(message: 'Harap isi form tersedia');
    } else if ((dataPengisian?.namaLengkap ?? '').isEmptyForm()) {
      UtilsLoading.showInfo(message: 'Harap isi nama lengkap');
    } else if ((dataPengisian?.email ?? '').isEmptyForm()) {
      UtilsLoading.showInfo(message: 'Harap isi email');
    } else if (!(dataPengisian?.email ?? '').isValidEmail()) {
      UtilsLoading.showInfo(message: 'Harap isi email dengan benar');
    } else if ((dataPengisian?.kataSandi ?? '').isEmptyForm()) {
      UtilsLoading.showInfo(message: 'Harap isi password');
    } else if (!(dataPengisian?.kataSandi ?? '').isValidPassword()) {
      UtilsLoading.showInfo(message: 'Harap isi password dengan benar');
    } else if (selectLeader == null) {
      UtilsLoading.showInfo(message: 'Harap pilih leader');
    } else {
      isLoading = true;
      notifyListeners();

      UtilsLoading.showLoading();

      Map<String, String> data = {
        'nama_lengkap': dataPengisian!.namaLengkap,
        'email': dataPengisian!.email,
        'leader': selectLeader!.id,
        'username': dataPengisian!.email,
        'password': dataPengisian!.kataSandi,
      };
      try {
        final resStep1 = await HTTPAuthService().register(data: data);

        resStep1.fold(
          (e) async {
            UtilsLoading.dismiss();
            UtilsLoading.showError(message: e);

            isLoading = false;
            notifyListeners();
          },
          (cat) async {
            UtilsLoading.dismiss();
            UtilsLoading.showSuccess(
              message: 'Berhasil daftar, Ditunggu untuk diterima',
            );

            Future.delayed(
              const Duration(seconds: 2),
              () {
                isLoading = false;
                notifyListeners();

                Navigator.pop(context);
              },
            );
          },
        );
      } catch (e) {
        UtilsLoading.dismiss();
        UtilsLoading.showError(message: '$e');

        isLoading = false;
        notifyListeners();
      }
    }
  }
}
