// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:yboxv2/anim/animation_success_add.dart';

import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class SuksesPage extends StatefulWidget {
  final String form;
  const SuksesPage({
    Key? key,
    required this.form,
  }) : super(key: key);

  @override
  State<SuksesPage> createState() => _SuksesPageState();
}

class _SuksesPageState extends State<SuksesPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationSuccessAdd _animation;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1800,
        ));
    _animation = AnimationSuccessAdd(controller: _controller);

    setState(() {
      isLoading = false;
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container()
        : AnimatedBuilder(
            animation: _animation.controller,
            builder: (BuildContext context, Widget? child) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40.0),
                    Opacity(
                      opacity: _animation.imgOpacity.value,
                      child: Image.asset(
                        'assets/image/img_success_add.png',
                        width: 273.0,
                        height: 273.0,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Opacity(
                      opacity: _animation.deskripsiOpacity.value,
                      child: vText(
                        'Berhasil Menambahkan ${widget.form}',
                        color: black5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Opacity(
                      opacity: _animation.buttonOpacity.value,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
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
                          'Kembali ke home',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
  }
}
