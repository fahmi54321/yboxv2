import 'package:flutter/material.dart';
import 'package:yboxv2/pages/login/login_page.dart';
import 'package:yboxv2/pages/register/register_page.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class StartedPage extends StatefulWidget {
  static const route = 'started-page';
  const StartedPage({super.key});

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image/img_bg_login.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/image/label_d.png',
                    width: MediaQuery.of(context).size.width * 0.75,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginPage.route);
                      },
                      style: OutlinedButton.styleFrom(
                        alignment: Alignment.center,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width, 45.0),
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                        ),
                        side: const BorderSide(color: primaryColor),
                      ),
                      child: vText(
                        'Masuk',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: white1,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterPage.route);
                      },
                      style: OutlinedButton.styleFrom(
                        alignment: Alignment.center,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width, 45.0),
                        backgroundColor: black2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                        ),
                        side: const BorderSide(color: black2),
                      ),
                      child: vText(
                        'Daftar',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: white1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
