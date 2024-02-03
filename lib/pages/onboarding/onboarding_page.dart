import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/home/fragment/shimer/details_shimer.dart';
import 'package:yboxv2/pages/onboarding/onboarding_state.dart';
import 'package:yboxv2/pages/started/started_page.dart';
import 'package:yboxv2/pages/widget/data_belum_ada.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class OnboardingPage extends StatefulWidget {
  static const route = 'onboarding1-page';
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnboardingState(context: context),
      child:
          Consumer(builder: (BuildContext context, OnboardingState state, _) {
        return SafeArea(
          child: Scaffold(
            body: state.isLoading
                ? const DetailsShimer()
                : state.listOnBorading.isEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const DataBelumAda(
                            deskripsi: 'Data Intro slider belum ada',
                          ),
                          Material(
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
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    : Onboarding(
                        pages: state.onboardingPageList,
                        onPageChange: (int pageIndex) {
                          state.index = pageIndex;
                        },
                        startPageIndex: 0,
                        footerBuilder:
                            (context, dragDistance, pagesLength, setIndex) {
                          return DecoratedBox(
                            decoration: BoxDecoration(
                              color: state.listOnBorading[state.index].warna
                                  .toColor(),
                            ),
                            child: ColoredBox(
                              color: state.listOnBorading[state.index].warna
                                  .toColor(),
                              child: Padding(
                                padding: const EdgeInsets.all(45.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomIndicator(
                                      netDragPercent: dragDistance,
                                      pagesLength: pagesLength,
                                      indicator: Indicator(
                                        indicatorDesign:
                                            IndicatorDesign.polygon(
                                          polygonDesign: PolygonDesign(
                                            polygon: DesignType.polygon_circle,
                                          ),
                                        ),
                                      ),
                                    ),
                                    state.index == pagesLength - 1
                                        ? state.signupButton
                                        : state.skipButton(setIndex: setIndex)
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
          ),
        );
      }),
    );
  }
}
