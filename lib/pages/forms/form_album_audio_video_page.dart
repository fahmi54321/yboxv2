import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/models/album/details_album_res.dart';
import 'package:yboxv2/models/audio/details_audio_res.dart';
import 'package:yboxv2/models/video/details_video_res.dart';

import 'package:yboxv2/pages/forms/form_album_audio_video_state.dart';
import 'package:yboxv2/pages/forms/utils_validation_form.dart';
import 'package:yboxv2/pages/provider/data_album_video_audio.dart';
import 'package:yboxv2/pages/widget/sukses_add.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class ArgsFormAlbumAudioVideoPage {
  final String fromCode;
  final DetailsAlbumRes? dataAlbum;
  final DetailsVideoRes? dataVideo;
  final DetailsAudioRes? dataAudio;
  ArgsFormAlbumAudioVideoPage({
    required this.fromCode,
    this.dataAlbum,
    this.dataVideo,
    this.dataAudio,
  });
}

class FormAlbumAudioVideoPage extends StatefulWidget {
  final ArgsFormAlbumAudioVideoPage args;
  static const route = 'form-album-audio-video-page';

  const FormAlbumAudioVideoPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<FormAlbumAudioVideoPage> createState() =>
      _FormAlbumAudioVideoPageState();
}

class _FormAlbumAudioVideoPageState extends State<FormAlbumAudioVideoPage> {
  late DataAlbumAudioVideo dataAlbumProvider;

  @override
  void initState() {
    super.initState();
    dataAlbumProvider = context.read<DataAlbumAudioVideo>();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FormAlbumAudioVideoState(
        context: context,
        fromCode: widget.args.fromCode,
        dataAlbum: widget.args.dataAlbum,
        dataVideo: widget.args.dataVideo,
        dataAudio: widget.args.dataAudio,
      ),
      child: Consumer(
        builder: (BuildContext context, FormAlbumAudioVideoState state, _) {
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
                : state.isSuksesAdd
                    ? SuksesPage(form: widget.args.fromCode)
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
                            FormData? formData = await UtilsValidationForm
                                .cekValidasiAlbumOrVideo(
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
                                      'Sebelumnya',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: white1,
                                    ),
                                  ),
                                ),
                              if (state.currentStep != 0)
                                const SizedBox(width: 20),
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
}
