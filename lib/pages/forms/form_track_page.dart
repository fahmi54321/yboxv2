import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/models/track/details_track_res.dart';
import 'package:yboxv2/pages/forms/form_track_state.dart';
import 'package:yboxv2/pages/forms/utils_validation_form.dart';
import 'package:yboxv2/pages/provider/data_track.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class ArgsFormTrackPage {
  DetailsTrackRes? dataTrackRes;

  ArgsFormTrackPage({
    this.dataTrackRes,
  });
}

class FormTrackPage extends StatefulWidget {
  final ArgsFormTrackPage args;
  static const route = 'track_form_page';

  const FormTrackPage({
    Key? key,
    required this.args,
  }) : super(key: key);

  @override
  State<FormTrackPage> createState() => _FormTrackPageState();
}

class _FormTrackPageState extends State<FormTrackPage> {
  late DataTrack dataTrackProvider;

  @override
  void initState() {
    super.initState();
    dataTrackProvider = context.read<DataTrack>();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TrackFormState(
        context: context,
        dataTrackRes: widget.args.dataTrackRes,
      ),
      child: Consumer(
        builder: (BuildContext context, TrackFormState state, _) {
          return Scaffold(
            appBar: AppBar(
              foregroundColor: black2,
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              title: vText(
                'Track',
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

                      if (isLastStep) {
                        FormData? formData =
                            await UtilsValidationForm.cekValidasiTrack(
                          data: dataTrackProvider.state,
                          isEdit: state.isEdit,
                        );
                        if (formData != null) {
                          if (state.isEdit) {
                            state.editTrack(formData);
                          } else {
                            state.saveTrack(formData);
                          }
                        }
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
}
