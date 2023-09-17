import 'package:flutter/material.dart';
import 'package:yboxv2/pages/home/details/details_video_page.dart';
import 'package:yboxv2/pages/home/widget/item.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class VideoFragment extends StatefulWidget {
  const VideoFragment({super.key});

  @override
  VideoFragmentState createState() => VideoFragmentState();
}

class VideoFragmentState extends State<VideoFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: vText(
          'Video',
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14.0,
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                vText(
                  'List Video anda',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: primaryColor,
                ),
                InkWell(
                  onTap: () {},
                  splashColor: primaryColor.withOpacity(0.50),
                  borderRadius: BorderRadius.circular(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 13.0,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          const SizedBox(width: 4.0),
                          vText(
                            'Add',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).colorScheme.onPrimary,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 13.0),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ItemAll(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        DetailsVideoPage.route,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
