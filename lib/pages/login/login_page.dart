// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/anim/animation_login.dart';
import 'package:yboxv2/pages/login/login_state.dart';
import 'package:yboxv2/pages/widget/auth/form_auth.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class LoginPage extends StatefulWidget {
  static const route = 'login-page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1780,
        ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Login(
      controller: _controller,
    );
  }
}

class Login extends StatelessWidget {
  final AnimationController controller;
  final AnimationLogin animation;
  Login({
    super.key,
    required this.controller,
  }) : animation = AnimationLogin(controller: controller);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation.controller,
        builder: (BuildContext context, Widget? child) {
          return ChangeNotifierProvider(
            create: (_) => LoginState(
              context,
            ),
            child:
                Consumer(builder: (BuildContext context, LoginState state, _) {
              return SafeArea(
                child: Scaffold(
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
                  appBar: AppBar(
                    foregroundColor: black3,
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    elevation: 0.5,
                    title: Opacity(
                      opacity: animation.appBarOpacity.value,
                      child: vText(
                        'Masuk',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: black3,
                      ),
                    ),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 20.0,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: animation.emailOpacity.value,
                            child: FormAuth(
                              label: 'Email atau username',
                              hint: 'Masukkan email atau username',
                              deskripsi: 'Contoh: nama@gmail.com',
                              isFormPassword: false,
                              controller: state.emailController,
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          Opacity(
                            opacity: animation.kataSandiOpacity.value,
                            child: FormAuth(
                              label: 'Kata Sandi',
                              hint: 'Masukkan kata sandi',
                              deskripsi: 'Minimal 8 karakter',
                              isFormPassword: true,
                              controller: state.passController,
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          Opacity(
                            opacity: animation.buttonOpacity.value,
                            child: OutlinedButton(
                              onPressed: state.isLoading
                                  ? null
                                  : () {
                                      state.login();
                                    },
                              style: OutlinedButton.styleFrom(
                                alignment: Alignment.center,
                                fixedSize: Size(
                                    MediaQuery.of(context).size.width, 45.0),
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
                          ),
                          const SizedBox(height: 30.0),
                          Opacity(
                            opacity: animation.ketOpacity.value,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'Dengan mendaftar, saya menyetujui ',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.0,
                                  color: grey4,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Syarat dan Ketentuan ',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      color: primaryColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'serta ',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      color: grey4,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Kebijakan Privasi',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.0,
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          );
        });
  }
}
