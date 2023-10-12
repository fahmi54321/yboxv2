import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/anim/animation_dialog_ubah_password.dart';
import 'package:yboxv2/pages/widget/auth/form_auth.dart';
import 'package:yboxv2/pages/widget/ubah_password_state.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class UbahPasswordPage extends StatefulWidget {
  const UbahPasswordPage({
    Key? key,
  }) : super(key: key);

  @override
  UbahPasswordPageState createState() => UbahPasswordPageState();
}

class UbahPasswordPageState extends State<UbahPasswordPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1000,
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UbahPasswordState(
        context: context,
      ),
      child: Consumer(
        builder: (
          BuildContext context,
          UbahPasswordState state,
          _,
        ) {
          return AddAkunBank(
            state: state,
            controller: _controller,
          );
        },
      ),
    );
  }
}

class AddAkunBank extends StatefulWidget {
  final UbahPasswordState state;
  final AnimationController controller;
  final AnimationDialogUbahPassword animation;
  AddAkunBank({
    super.key,
    required this.state,
    required this.controller,
  }) : animation = AnimationDialogUbahPassword(controller: controller);

  @override
  State<AddAkunBank> createState() => _AddAkunBankState();
}

class _AddAkunBankState extends State<AddAkunBank> {
  @override
  void initState() {
    super.initState();
    widget.controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.animation.controller,
        builder: (BuildContext context, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  titleWidget(),
                  const SizedBox(height: 25),
                  ubahPassWidget(),
                  const SizedBox(height: 15),
                  simpanWidget(),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          );
        });
  }

  Widget titleWidget() {
    return Opacity(
      opacity: widget.animation.titleOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Form Ubah Password",
            fontWeight: FontWeight.w600,
            color: black7,
            fontSize: 18.0,
          ),
        ],
      ),
    );
  }

  Widget ubahPassWidget() {
    return Opacity(
      opacity: widget.animation.formOpacity.value,
      child: FormAuth(
        label: 'Kata Sandi',
        hint: 'Masukkan kata sandi',
        deskripsi: 'Minimal 8 karakter',
        isFormPassword: true,
        controller: widget.state.passController,
      ),
    );
  }

  Widget simpanWidget() {
    return Opacity(
      opacity: widget.animation.buttonOpacity.value,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: widget.state.isLoadingButton
                ? null
                : () {
                    widget.state.ubahPassword();
                  },
            style: OutlinedButton.styleFrom(
              alignment: Alignment.center,
              backgroundColor: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
              ),
              side: const BorderSide(color: primaryColor),
            ),
            child: vText(
              'Simpan',
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: white1,
            ),
          ),
        ],
      ),
    );
  }
}
