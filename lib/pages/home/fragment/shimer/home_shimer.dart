import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:yboxv2/pages/home/fragment/shimer/placeholder.dart';

class HomeShimer extends StatelessWidget {
  const HomeShimer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          bottom: 36.0,
        ),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          enabled: true,
          child: const SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                ContentPlaceholder(lineType: ContentLineType.twoLines),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          BannerPlaceholder(),
                          TitlePlaceholder(width: double.infinity),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          BannerPlaceholder(),
                          TitlePlaceholder(width: double.infinity),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          BannerPlaceholder(),
                          TitlePlaceholder(width: double.infinity),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          BannerPlaceholder(),
                          TitlePlaceholder(width: double.infinity),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
