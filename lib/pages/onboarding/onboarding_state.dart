import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:yboxv2/models/onboarding/onboarding_res.dart';
import 'package:yboxv2/network/http_list.dart';
import 'package:yboxv2/pages/onboarding/widget/page_widget.dart';
import 'package:yboxv2/pages/started/started_page.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/widget/v_text.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    debugPrint('buffer : ${int.parse(buffer.toString(), radix: 16)}');
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class OnboardingState extends ChangeNotifier {
  OnboardingState({
    required this.context,
  }) {
    init();
  }

  bool isLoading = false;

  final BuildContext context;

  late Material materialButton;
  int index = 0;

  List<PageModel> onboardingPageList = [];
  List<OnboardingRes> listOnBorading = [];

  void init() async {
    materialButton = skipButton();

    await getOnboarding();
  }

  Future<void> getOnboarding() async {
    isLoading = true;
    notifyListeners();

    final resStep1 = await HTTPListService().getOnboarding();

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listOnBorading = cat;
        notifyListeners();

        if (cat.isNotEmpty) {
          for (var element in cat) {
            onboardingPageList.add(
              PageModel(
                widget: PageWidget(
                  color: element.warna.toColor(),
                  title: element.judul,
                  subtitle:
                      'Melindungi lisensi dari karya anda yang distribusikan',
                  image: 'assets/image/the_band_party.png',
                ),
              ),
            );
          }
        }

        isLoading = false;
        notifyListeners();
      },
    );
  }

  Material skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: primaryColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: Padding(
          padding: defaultSkipButtonPadding,
          child: vText(
            'Lewati',
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }

  Material get signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: primaryColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            StartedPage.route,
            (route) => false,
          );
        },
        child: Padding(
          padding: defaultProceedButtonPadding,
          child: vText(
            'Daftar',
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
