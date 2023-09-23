// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/anim/animation_register.dart';
import 'package:yboxv2/pages/register/register_state.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class RegisterPage extends StatefulWidget {
  static const route = 'daftar-page';

  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          // milliseconds: 1780,
          milliseconds: 2000,
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
    return Register(
      controller: _controller,
    );
  }
}

class Register extends StatefulWidget {
  final AnimationController controller;
  final AnimationRegister animation;
  Register({
    super.key,
    required this.controller,
  }) : animation = AnimationRegister(controller: controller);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.animation.controller,
        builder: (BuildContext context, Widget? child) {
          return ChangeNotifierProvider(
            create: (_) => RegisterState(
              context: context,
              animation: widget.animation,
            ),
            child: Consumer(
              builder: (BuildContext context, RegisterState state, _) {
                return Scaffold(
                  appBar: AppBar(
                    foregroundColor: black3,
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    elevation: 0.5,
                    title: Opacity(
                      opacity: widget.animation.appBarOpacity.value,
                      child: vText(
                        'Daftar',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: black3,
                      ),
                    ),
                  ),
                  body: Stepper(
                    type: StepperType.horizontal,
                    steps: state.listSteps(),
                    currentStep: state.currentStep,
                    elevation: 0.5,
                    onStepContinue: () {
                      final isLastStep =
                          state.currentStep == state.listSteps().length - 1;

                      if (isLastStep) {
                        state.register();
                      } else {
                        setState(() {
                          state.currentStep += 1;
                        });
                      }
                    },
                    onStepCancel: state.currentStep == 0
                        ? null
                        : () {
                            setState(() {
                              state.currentStep -= 1;
                            });
                          },
                    onStepTapped: (step) {
                      setState(() {
                        state.currentStep = step;
                      });
                    },
                    controlsBuilder:
                        (BuildContext context, ControlsDetails details) {
                      final isLastStep =
                          state.currentStep == state.listSteps().length - 1;

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          children: [
                            Opacity(
                              opacity: widget.animation.buttonOpacity.value,
                              child: Row(
                                children: <Widget>[
                                  Visibility(
                                    visible: state.currentStep != 0,
                                    child: Expanded(
                                      child: OutlinedButton(
                                        onPressed: details.onStepCancel,
                                        style: OutlinedButton.styleFrom(
                                          alignment: Alignment.center,
                                          fixedSize: Size(
                                              MediaQuery.of(context).size.width,
                                              45.0),
                                          backgroundColor: primaryColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              5.0,
                                            ),
                                          ),
                                          side: const BorderSide(
                                              color: primaryColor),
                                        ),
                                        child: vText(
                                          'Sebelumnya',
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w700,
                                          color: white1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: state.currentStep != 0,
                                    child: const SizedBox(
                                      width: 20,
                                    ),
                                  ),
                                  Expanded(
                                    child: OutlinedButton(
                                      onPressed: state.isLoading
                                          ? null
                                          : details.onStepContinue,
                                      style: OutlinedButton.styleFrom(
                                        alignment: Alignment.center,
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width,
                                            45.0),
                                        backgroundColor: primaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            5.0,
                                          ),
                                        ),
                                        side: const BorderSide(
                                            color: primaryColor),
                                      ),
                                      child: vText(
                                        state.setTextButton(
                                            isLastStep: isLastStep),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700,
                                        color: white1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Opacity(
                              opacity: widget.animation.ketOpacity.value,
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
                      );
                    },
                  ),
                );
              },
            ),
          );
        });
  }
}
