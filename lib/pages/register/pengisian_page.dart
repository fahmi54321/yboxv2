// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:yboxv2/anim/animation_register.dart';
import 'package:yboxv2/pages/register/model/pengisian_model.dart';
import 'package:yboxv2/pages/widget/auth/form_auth.dart';

class PengisianPage extends StatefulWidget {
  final AnimationRegister animation;
  final Function(DataPengisian? data) getData;
  const PengisianPage({
    Key? key,
    required this.animation,
    required this.getData,
  }) : super(key: key);

  @override
  State<PengisianPage> createState() => _PengisianPageState();
}

class _PengisianPageState extends State<PengisianPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController kataSandiController = TextEditingController();

  DataPengisian? data;

  @override
  void initState() {
    namaController.addListener(listenNama);
    emailController.addListener(listenEmail);
    kataSandiController.addListener(listenKataSandi);
    super.initState();
  }

  @override
  void dispose() {
    namaController.dispose();
    namaController.removeListener(listenNama);
    emailController.dispose();
    emailController.removeListener(listenEmail);
    kataSandiController.dispose();
    kataSandiController.removeListener(listenKataSandi);
    super.dispose();
  }

  void listenNama() {
    if (namaController.text.isNotEmpty) {
      widget.getData(
        DataPengisian(
          namaLengkap: namaController.text,
          email: emailController.text,
          kataSandi: kataSandiController.text,
        ),
      );
    }
  }

  void listenEmail() {
    if (emailController.text.isNotEmpty) {
      widget.getData(
        DataPengisian(
          namaLengkap: namaController.text,
          email: emailController.text,
          kataSandi: kataSandiController.text,
        ),
      );
    }
  }

  void listenKataSandi() {
    if (kataSandiController.text.isNotEmpty) {
      widget.getData(
        DataPengisian(
          namaLengkap: namaController.text,
          email: emailController.text,
          kataSandi: kataSandiController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: widget.animation.namaOpacity.value,
          child: FormAuth(
            label: 'Nama Lengkap',
            hint: 'Masukkan nama anda',
            controller: namaController,
          ),
        ),
        const SizedBox(height: 20.0),
        Opacity(
          opacity: widget.animation.emailOpacity.value,
          child: FormAuth(
            label: 'Email',
            hint: 'Masukkan email',
            deskripsi: 'Contoh: nama@gmail.com',
            controller: emailController,
          ),
        ),
        const SizedBox(height: 20.0),
        Opacity(
          opacity: widget.animation.kataSandiOpacity.value,
          child: FormAuth(
            label: 'Kata Sandi',
            hint: 'Masukkan kata sandi',
            deskripsi: 'Contoh: Minimal 8 karakter',
            controller: kataSandiController,
          ),
        ),
      ],
    );
  }
}
