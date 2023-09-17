import 'package:flutter/material.dart';
import 'package:yboxv2/pages/widget/auth/form_auth.dart';

class PengisianPage extends StatelessWidget {
  const PengisianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FormAuth(
          label: 'Nama Lengkap',
          hint: 'Masukkan nama anda',
        ),
        const SizedBox(height: 20.0),
        FormAuth(
          label: 'Email',
          hint: 'Masukkan email',
          deskripsi: 'Contoh: nama@gmail.com',
        ),
        const SizedBox(height: 20.0),
        FormAuth(
          label: 'Kata Sandi',
          hint: 'Masukkan kata sandi',
          deskripsi: 'Contoh: Minimal 8 karakter',
        ),
      ],
    );
  }
}
