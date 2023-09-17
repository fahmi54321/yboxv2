// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yboxv2/pages/home/home_page.dart';
import 'package:yboxv2/pages/widget/auth/form_auth.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class LoginPage extends StatefulWidget {
  static const route = 'login-page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        appBar: AppBar(
          foregroundColor: black3,
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          elevation: 0.5,
          title: vText(
            'Masuk',
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: black3,
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
                FormAuth(
                  label: 'Email',
                  hint: 'Masukkan email',
                  deskripsi: 'Contoh: nama@gmail.com',
                  isFormPassword: false,
                ),
                const SizedBox(height: 30.0),
                FormAuth(
                  label: 'Kata Sandi',
                  hint: 'Masukkan kata sandi',
                  deskripsi: 'Minimal 8 karakter',
                  isFormPassword: true,
                ),
                const SizedBox(height: 30.0),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      HomePage.route,
                      (route) => false,
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    alignment: Alignment.center,
                    fixedSize: Size(MediaQuery.of(context).size.width, 45.0),
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
                const SizedBox(height: 30.0),
                RichText(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
