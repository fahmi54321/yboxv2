import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/pages/home/fragment/shimer/details_shimer.dart';
import 'package:yboxv2/pages/onboarding/onboarding_state.dart';

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
                          color:
                              state.listOnBorading[state.index].warna.toColor(),
                        ),
                        child: ColoredBox(
                          color:
                              state.listOnBorading[state.index].warna.toColor(),
                          child: Padding(
                            padding: const EdgeInsets.all(45.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomIndicator(
                                  netDragPercent: dragDistance,
                                  pagesLength: pagesLength,
                                  indicator: Indicator(
                                    indicatorDesign: IndicatorDesign.polygon(
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
