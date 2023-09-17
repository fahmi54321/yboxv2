import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegisterState(
        context: context,
      ),
      child: Consumer(
        builder: (BuildContext context, RegisterState state, _) {
          return Scaffold(
            appBar: AppBar(
              foregroundColor: black3,
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              elevation: 0.5,
              title: vText(
                'Daftar',
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: black3,
              ),
            ),
            body: (state.isCompleted == true)
                ? suksesInput(context: context, message: 'Berhasil')
                : Stepper(
                    type: StepperType.horizontal,
                    steps: state.listSteps(),
                    currentStep: state.currentStep,
                    onStepContinue: () {
                      final isLastStep =
                          state.currentStep == state.listSteps().length - 1;

                      if (isLastStep) {
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
                            Row(
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
                                    onPressed: details.onStepContinue,
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
                                      side:
                                          const BorderSide(color: primaryColor),
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
                            const SizedBox(height: 20.0),
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
                      );
                    },
                  ),
          );
        },
      ),
    );
  }

  Widget suksesInput({required BuildContext context, required String message}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SizedBox(
            width: 139,
            height: 190,
            child: Image.asset('images/success.png'),
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: vText('Berhasil Disimpan', fontSize: 24),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: vText(message, fontSize: 14),
          ),
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}
