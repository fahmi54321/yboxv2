// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/models/album/details_album_res.dart';
import 'package:yboxv2/models/audio/details_audio_res.dart';
import 'package:yboxv2/models/video/details_video_res.dart';

import 'package:yboxv2/pages/forms/main_form_state_2.dart';
import 'package:yboxv2/pages/forms/utils_validation_form.dart';
import 'package:yboxv2/pages/provider/data_album.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class ArgsMainFormPage {
  final String fromCode;
  final DetailsAlbumRes? dataAlbum;
  final DetailsVideoRes? dataVideo;
  final DetailsAudioRes? dataAudio;
  ArgsMainFormPage({
    required this.fromCode,
    this.dataAlbum,
    this.dataVideo,
    this.dataAudio,
  });
}

class MainFormPage extends StatefulWidget {
  final ArgsMainFormPage args;
  static const route = 'main-form-page';

  const MainFormPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<MainFormPage> createState() => _MainFormPageState();
}

class _MainFormPageState extends State<MainFormPage> {
  late DataAlbum dataAlbumProvider;

  @override
  void initState() {
    super.initState();
    dataAlbumProvider = context.read<DataAlbum>();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainFormState2(
        context: context,
        fromCode: widget.args.fromCode,
        dataAlbum: widget.args.dataAlbum,
        dataVideo: widget.args.dataVideo,
        dataAudio: widget.args.dataAudio,
      ),
      child: Consumer(
        builder: (BuildContext context, MainFormState2 state, _) {
          return Scaffold(
            appBar: AppBar(
              foregroundColor: black2,
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              title: vText(
                widget.args.fromCode.toUpperCase(),
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: black2,
              ),
              elevation: 0,
            ),
            body: state.isLoadingList
                ? Container()
                : Stepper(
                    type: StepperType.horizontal,
                    steps: state.listSteps(),
                    currentStep: state.currentStep,
                    elevation: 0.0,
                    onStepContinue: () async {
                      final isLastStep =
                          state.currentStep == state.listSteps().length - 1;

                      debugPrint('isLastStep $isLastStep');
                      debugPrint('currentStep ${state.currentStep}');

                      if (isLastStep) {
                        FormData? formData =
                            await UtilsValidationForm.cekValidasiAlbumOrVideo(
                          data: dataAlbumProvider.state,
                          isEdit: state.isEdit,
                        );

                        if (formData != null) {
                          if (state.isEdit) {
                            if (widget.args.fromCode == 'album') {
                              state.editAlbum(formData);
                            } else if (widget.args.fromCode == 'video') {
                              state.editVideo(formData);
                            } else if (widget.args.fromCode == 'audio') {
                              state.editAudio(formData);
                            }
                          } else {
                            if (widget.args.fromCode == 'album') {
                              state.saveAlbum(formData);
                            } else if (widget.args.fromCode == 'video') {
                              state.saveVideo(formData);
                            } else if (widget.args.fromCode == 'audio') {
                              state.saveAudio(formData);
                            }
                          }
                        }
                      } else {
                        try {
                          setState(() {
                            state.currentStep += 1;
                          });
                        } catch (e) {
                          debugPrint('$e');
                        }
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

                      return Row(
                        children: <Widget>[
                          if (state.currentStep != 0)
                            Expanded(
                              child: OutlinedButton(
                                onPressed: details.onStepCancel,
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
                                  'Sebelumnya',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                  color: white1,
                                ),
                              ),
                            ),
                          if (state.currentStep != 0) const SizedBox(width: 20),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: details.onStepContinue,
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
                                state.setTextButton(
                                  isLastStep: isLastStep,
                                ),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                color: white1,
                              ),
                            ),
                          ),
                        ],
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
      ],
    );
  }
}
