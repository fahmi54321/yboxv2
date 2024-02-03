import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/anim/animation_main_form.dart';
import 'package:yboxv2/models/general/genre_res.dart';

import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/general/publisher_res.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/pages/forms/form_album_audio_video_state.dart';
import 'package:yboxv2/pages/forms/widget/cover_image.dart';
import 'package:yboxv2/pages/provider/data_album_video_audio.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_dropdown.dart';
import 'package:yboxv2/widget/v_text.dart';

class MainForm extends StatefulWidget {
  LanguageRes? languageResMain;
  LanguageRes? languageResTrack;
  GenreRes? genreRes1Main;
  GenreRes? genreRes2Main;
  PublisherRes? publisher;
  final List<LanguageRes> listLanguage;
  final List<GenreRes> listGenre;
  final List<LeaderRes> listLabelReq;
  final List<PublisherRes> listPublisher;
  final FormAlbumAudioVideoState state;
  MainForm({
    super.key,
    this.languageResMain,
    this.languageResTrack,
    this.publisher,
    this.listLanguage = const [],
    this.genreRes1Main,
    this.listGenre = const [],
    this.genreRes2Main,
    this.listLabelReq = const [],
    this.listPublisher = const [],
    required this.state,
  });

  @override
  State<MainForm> createState() => _MainFormState();
}

class _MainFormState extends State<MainForm>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1780,
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainFormWidget(
      controller: _controller,
      languageResMain: widget.languageResMain,
      languageResTrack: widget.languageResTrack,
      genreRes1Main: widget.genreRes1Main,
      genreRes2Main: widget.genreRes2Main,
      publisher: widget.publisher,
      listLanguage: widget.listLanguage,
      listGenre: widget.listGenre,
      listPublisher: widget.listPublisher,
      state: widget.state,
    );
  }
}

class MainFormWidget extends StatefulWidget {
  LanguageRes? languageResMain;
  LanguageRes? languageResTrack;
  GenreRes? genreRes1Main;
  GenreRes? genreRes2Main;
  PublisherRes? publisher;
  final List<LanguageRes> listLanguage;
  final List<GenreRes> listGenre;
  final List<PublisherRes> listPublisher;
  final AnimationController controller;
  final AnimationMainForm animation;
  final FormAlbumAudioVideoState state;

  MainFormWidget({
    super.key,
    this.languageResMain,
    this.languageResTrack,
    this.publisher,
    this.listLanguage = const [],
    this.listPublisher = const [],
    this.genreRes1Main,
    this.listGenre = const [],
    this.genreRes2Main,
    required this.controller,
    required this.state,
  }) : animation = AnimationMainForm(
          controller: controller,
        );

  @override
  State<MainFormWidget> createState() => _MainFormWidgetState();
}

class _MainFormWidgetState extends State<MainFormWidget> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    setState(() {
      isLoading = true;
    });

    widget.state.inputTitleRelease.addListener(inputTitleReleaseListener);
    widget.state.inputTitleVersion.addListener(inputTitleVersionListener);
    widget.state.inputArtist.addListener(inputArtistListener);
    widget.state.inputArtistSpotify.addListener(inputArtistSpotifyListener);
    widget.state.inputArtistApple.addListener(inputArtistAppleListener);
    widget.state.inputCopyrightP.addListener(inputCopyrightPListener);
    widget.state.inputCopyrightC.addListener(inputCopyrightCListener);
    widget.state.inputPrevReleased.addListener(inputPrevReleasedListener);
    widget.state.inputReleaseId.addListener(inputReleaseIdListener);
    widget.state.inputUpc.addListener(inputUpcListener);

    setState(() {
      isLoading = false;
    });

    widget.controller.forward();
  }

  @override
  void dispose() {
    widget.state.inputTitleRelease.removeListener(inputTitleReleaseListener);
    widget.state.inputTitleVersion.removeListener(inputTitleVersionListener);
    widget.state.inputArtist.removeListener(inputArtistListener);
    widget.state.inputArtistSpotify.removeListener(inputArtistSpotifyListener);
    widget.state.inputArtistApple.removeListener(inputArtistAppleListener);
    widget.state.inputCopyrightP.removeListener(inputCopyrightPListener);
    widget.state.inputCopyrightC.removeListener(inputCopyrightCListener);
    widget.state.inputPrevReleased.removeListener(inputPrevReleasedListener);
    widget.state.inputReleaseId.removeListener(inputReleaseIdListener);
    widget.state.inputUpc.removeListener(inputUpcListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container()
        : AnimatedBuilder(
            animation: widget.animation.controller,
            builder: (BuildContext context, Widget? child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  coverImage(),
                  const SizedBox(height: 15),
                  languageWidget(),
                  const SizedBox(height: 15),
                  titleWidget(context),
                  const SizedBox(height: 15),
                  artistWidget(),
                  const SizedBox(height: 15),
                  infoWidget(),
                  const SizedBox(height: 15),
                ],
              );
            });
  }

  Widget titleWidget(BuildContext context) {
    return Opacity(
      opacity: widget.animation.titleOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Title",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: black7,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vText(
                      "Release title",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: black7,
                    ),
                    const SizedBox(height: 8),
                    VInputText(
                      'Input here...',
                      radius: 8,
                      outlineColor: grey10,
                      activeColor: grey10,
                      fontSize: 14,
                      hintFontSize: 14.0,
                      hintTextColor: grey4,
                      textColor: grey7,
                      fillColor: Theme.of(context).colorScheme.onPrimary,
                      controller: widget.state.inputTitleRelease,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vText(
                      "Title version",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: black7,
                    ),
                    const SizedBox(height: 8),
                    VInputText(
                      'Input here...',
                      radius: 8,
                      outlineColor: grey10,
                      activeColor: grey10,
                      fontSize: 14,
                      hintFontSize: 14.0,
                      hintTextColor: grey4,
                      textColor: grey7,
                      fillColor: Theme.of(context).colorScheme.onPrimary,
                      controller: widget.state.inputTitleVersion,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.42,
            child: VDropDownPublisher(
              radius: 8.0,
              fontSize: 14.0,
              colorText: grey7,
              borderColor: grey10,
              value: widget.publisher,
              onChanged: (PublisherRes? data) {
                setState(() {
                  widget.publisher = data;
                });

                if (data != null) {
                  context
                      .read<DataAlbumAudioVideo>()
                      .updatePublisher(data.id.toString());
                }
              },
              items: widget.listPublisher
                  .map<DropdownMenuItem<PublisherRes>>((PublisherRes value) {
                return DropdownMenuItem<PublisherRes>(
                  value: value,
                  child: Text(value.name),
                );
              }).toList(),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: grey10,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget languageWidget() {
    return Opacity(
      opacity: widget.animation.languageOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Language",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: black7,
          ),
          const SizedBox(height: 10),
          vText(
            "In what language will you be writing your titles, artist name(s) and release description?",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: black7,
          ),
          const SizedBox(height: 5),
          VDropDownLanguage(
            radius: 8.0,
            fontSize: 14.0,
            colorText: grey7,
            borderColor: grey10,
            value: widget.languageResMain,
            onChanged: (LanguageRes? data) {
              setState(() {
                widget.languageResMain = data;
              });

              if (data != null) {
                context
                    .read<DataAlbumAudioVideo>()
                    .updateLanguageId(data.id.toString());
              }
            },
            items: widget.listLanguage
                .map<DropdownMenuItem<LanguageRes>>((LanguageRes value) {
              return DropdownMenuItem<LanguageRes>(
                value: value,
                child: Text(value.name),
              );
            }).toList(),
            icon: const Icon(
              Icons.arrow_drop_down,
              color: grey10,
            ),
          ),
        ],
      ),
    );
  }

  Widget coverImage() {
    return Opacity(
      opacity: widget.animation.coverOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Cover image",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: black7,
          ),
          const SizedBox(height: 8),
          vText(
            "Images",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: black7,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () async {
                    // ambil file
                    File? file = await Utils.pilihFoto();
                    if (file != null) {
                      setState(() {
                        widget.state.coverImageFile = file;
                      });

                      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                        context
                            .read<DataAlbumAudioVideo>()
                            .updateCoverImage(file);
                      });
                    }
                  },
                  child: CoverImage(
                    inputCover: widget.state.coverImageFile,
                    editCover: widget.state.coverImageEdit,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return vText(
                              '${index + 1}. ${widget.state.rulesOfImage[index]}',
                              fontSize: 10,
                              maxLines: 1,
                            );
                          }),
                      const SizedBox(height: 10),
                      vText(
                        'Show more',
                        fontSize: 10,
                        maxLines: 1,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget infoWidget() {
    return Opacity(
      opacity: widget.animation.infoOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Info",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: black7,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vText(
                      "Genre 1",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: black7,
                    ),
                    const SizedBox(height: 8),
                    VDropDownGenre(
                      radius: 8.0,
                      fontSize: 14.0,
                      colorText: grey7,
                      borderColor: grey10,
                      value: widget.genreRes1Main,
                      onChanged: (GenreRes? data) {
                        setState(() {
                          widget.genreRes1Main = data;
                        });
                        if (data != null) {
                          context
                              .read<DataAlbumAudioVideo>()
                              .updateGenre(data.id.toString());
                        }
                      },
                      items: widget.listGenre
                          .map<DropdownMenuItem<GenreRes>>((GenreRes value) {
                        return DropdownMenuItem<GenreRes>(
                          value: value,
                          child: Text(value.name),
                        );
                      }).toList(),
                      icon: const Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vText(
                      "Genre 2",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: black7,
                    ),
                    const SizedBox(height: 8),
                    VDropDownGenre(
                      radius: 8.0,
                      fontSize: 14.0,
                      colorText: grey7,
                      borderColor: grey10,
                      value: widget.genreRes2Main,
                      onChanged: (GenreRes? data) {
                        setState(() {
                          widget.genreRes2Main = data;
                        });

                        if (data != null) {
                          context
                              .read<DataAlbumAudioVideo>()
                              .updateGenre2(data.id.toString());
                        }
                      },
                      items: widget.listGenre
                          .map<DropdownMenuItem<GenreRes>>((GenreRes value) {
                        return DropdownMenuItem<GenreRes>(
                          value: value,
                          child: Text(value.name),
                        );
                      }).toList(),
                      icon: const Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vText(
                      "(P) Copyright",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: black7,
                    ),
                    const SizedBox(height: 8),
                    VInputText(
                      'Input here...',
                      radius: 8,
                      outlineColor: grey10,
                      activeColor: grey10,
                      fontSize: 14,
                      hintFontSize: 14.0,
                      hintTextColor: grey4,
                      textColor: grey7,
                      fillColor: Theme.of(context).colorScheme.onPrimary,
                      controller: widget.state.inputCopyrightP,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vText(
                      "(C) Copyright",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: black7,
                    ),
                    const SizedBox(height: 8),
                    VInputText(
                      'Input here...',
                      radius: 8,
                      outlineColor: grey10,
                      activeColor: grey10,
                      fontSize: 14,
                      hintFontSize: 14.0,
                      hintTextColor: grey4,
                      textColor: grey7,
                      fillColor: Theme.of(context).colorScheme.onPrimary,
                      controller: widget.state.inputCopyrightC,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          vText(
            "Previously released?",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: black7,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Radio<int>(
                groupValue: widget.state.selectInputPrevRelease,
                value: widget.state.noInputPrevRelease,
                onChanged: (val) {
                  setState(() {
                    widget.state.selectInputPrevRelease = val ?? 0;
                  });
                },
                activeColor: primaryColor,
              ),
              Expanded(
                child: vText(
                  'No',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: black7,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                groupValue: widget.state.selectInputPrevRelease,
                value: widget.state.yesInputPrevRelease,
                onChanged: (val) {
                  setState(() {
                    widget.state.selectInputPrevRelease = val ?? 0;
                  });
                },
                activeColor: primaryColor,
              ),
              vText(
                'Yes',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: black7,
              ),
            ],
          ),
          Visibility(
            visible: (widget.state.selectInputPrevRelease ==
                widget.state.yesInputPrevRelease),
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: VInputText(
                'mm/dd/yyyy...',
                radius: 8,
                outlineColor: grey10,
                activeColor: grey10,
                fontSize: 14,
                hintFontSize: 14.0,
                hintTextColor: grey4,
                textColor: grey7,
                readOnly: true,
                fillColor: Theme.of(context).colorScheme.onPrimary,
                controller: widget.state.inputPrevReleased,
                onTap: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: const ColorScheme.light(
                            background: primaryColor,
                            primary: primaryColor,
                          ),
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  primaryColor, // button text color
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );

                  // if 'Cancel' => null
                  if (newDate == null) return;

                  //if 'Ok' => DateTime
                  setState(() {
                    widget.state.inputPrevReleased.text = Utils.dateToString(
                      newDate,
                      Utils.sendDateFormat2,
                    );
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vText(
                "On a record label?",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: black7,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Radio<int>(
                    groupValue: widget.state.selectInputLabel,
                    value: widget.state.noInputLabel,
                    onChanged: (val) {
                      setState(() {
                        widget.state.selectInputLabel = val ?? 0;
                      });
                    },
                    activeColor: primaryColor,
                  ),
                  Expanded(
                    child: vText(
                      'No',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: black7,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio<int>(
                    groupValue: widget.state.selectInputLabel,
                    value: widget.state.yesInputLabel,
                    onChanged: (val) {
                      setState(() {
                        widget.state.selectInputLabel = val ?? 0;
                      });
                    },
                    activeColor: primaryColor,
                  ),
                  vText(
                    'Yes',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: black7,
                  ),
                ],
              ),
            ],
          ),
          Visibility(
            visible:
                (widget.state.selectInputLabel == widget.state.yesInputLabel),
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Internal release ID",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: black7,
                  ),
                  const SizedBox(height: 8),
                  VInputText(
                    'Input here...',
                    radius: 8,
                    outlineColor: grey10,
                    activeColor: grey10,
                    fontSize: 14,
                    hintFontSize: 14.0,
                    hintTextColor: grey4,
                    textColor: grey7,
                    fillColor: Theme.of(context).colorScheme.onPrimary,
                    controller: widget.state.inputReleaseId,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          vText(
            "Do you already have a UPC/EAN/JAN?",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: black7,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Radio<int>(
                groupValue: widget.state.selectInputUPC,
                value: widget.state.noInputUPC,
                onChanged: (val) {
                  setState(() {
                    widget.state.selectInputUPC = val ?? 0;
                  });
                },
                activeColor: primaryColor,
              ),
              Expanded(
                child: vText(
                  'No',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: black7,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                groupValue: widget.state.selectInputUPC,
                value: widget.state.yesInputUPC,
                onChanged: (val) {
                  setState(() {
                    widget.state.selectInputUPC = val ?? 0;
                  });
                },
                activeColor: primaryColor,
              ),
              Expanded(
                child: vText(
                  'Yes (required if previously released = yes above)',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: black7,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Visibility(
            visible: (widget.state.selectInputUPC == widget.state.yesInputUPC),
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: VInputText(
                'Input here...',
                radius: 8,
                outlineColor: grey10,
                activeColor: grey10,
                fontSize: 14,
                hintFontSize: 14.0,
                hintTextColor: grey4,
                textColor: grey7,
                fillColor: Theme.of(context).colorScheme.onPrimary,
                controller: widget.state.inputUpc,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget artistWidget() {
    return Opacity(
      opacity: widget.animation.artistOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Artist",
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: black7,
          ),
          const SizedBox(height: 15),
          vText(
            "Artist(s) – indicate ONLY ONE per field",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: black7,
          ),
          const SizedBox(height: 8),
          VInputText(
            'Input here...',
            radius: 8,
            outlineColor: grey10,
            activeColor: grey10,
            fontSize: 14,
            hintFontSize: 14.0,
            hintTextColor: grey4,
            textColor: grey7,
            fillColor: Theme.of(context).colorScheme.onPrimary,
            controller: widget.state.inputArtist,
          ),
          const SizedBox(height: 15),
          vText(
            'Artist already on Spotify?',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: black7,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Radio<int>(
                groupValue: widget.state.selectInputArtistSpotify,
                value: widget.state.noInputArtistSpotify,
                onChanged: (val) {
                  setState(() {
                    widget.state.selectInputArtistSpotify = val ?? 0;
                  });
                },
                activeColor: primaryColor,
              ),
              Expanded(
                child: vText(
                  'No, create a new Spotify profile for this artist',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: black7,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                groupValue: widget.state.selectInputArtistSpotify,
                value: widget.state.yesInputArtistSpotify,
                onChanged: (val) {
                  setState(() {
                    widget.state.selectInputArtistSpotify = val ?? 0;
                  });
                },
                activeColor: primaryColor,
              ),
              vText(
                'Yes',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: black7,
              ),
            ],
          ),
          Visibility(
            visible: widget.state.selectInputArtistSpotify ==
                widget.state.yesInputArtistSpotify,
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: VInputText(
                'Input here..',
                radius: 8,
                outlineColor: grey10,
                activeColor: grey10,
                fontSize: 14,
                hintFontSize: 14.0,
                hintTextColor: grey4,
                textColor: grey7,
                fillColor: Theme.of(context).colorScheme.onPrimary,
                controller: widget.state.inputArtistSpotify,
              ),
            ),
          ),
          const SizedBox(height: 15),
          vText(
            'Artist already on Apple Music?',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: black7,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Radio<int>(
                groupValue: widget.state.selectInputArtistApple,
                value: widget.state.noInputArtistApple,
                onChanged: (val) {
                  setState(() {
                    widget.state.selectInputArtistApple = val ?? 0;
                  });
                },
                activeColor: primaryColor,
              ),
              Expanded(
                child: vText(
                  'No, create a new Apple Music/iTunes profile for this artist.',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: black7,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio<int>(
                groupValue: widget.state.selectInputArtistApple,
                value: widget.state.yesInputArtistApple,
                onChanged: (val) {
                  setState(() {
                    widget.state.selectInputArtistApple = val ?? 0;
                  });
                },
                activeColor: primaryColor,
              ),
              vText(
                'Yes',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: black7,
              ),
            ],
          ),
          Visibility(
            visible: widget.state.selectInputArtistApple ==
                widget.state.yesInputArtistApple,
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: VInputText(
                'Input here...',
                radius: 8,
                outlineColor: grey10,
                activeColor: grey10,
                fontSize: 14,
                hintFontSize: 14.0,
                hintTextColor: grey4,
                textColor: grey7,
                fillColor: Theme.of(context).colorScheme.onPrimary,
                controller: widget.state.inputArtistApple,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void inputTitleReleaseListener() {
    if (widget.state.inputTitleRelease.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updateReleaseTitle(widget.state.inputTitleRelease.text);
    }
  }

  void inputTitleVersionListener() {
    if (widget.state.inputTitleVersion.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updateTitleVersion(widget.state.inputTitleVersion.text);
    }
  }

  void inputArtistListener() {
    if (widget.state.inputArtist.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updateArtist(widget.state.inputArtist.text);
    }
  }

  void inputArtistSpotifyListener() {
    if (widget.state.inputArtistSpotify.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updateSpotify(widget.state.inputArtistSpotify.text);
    }
  }

  void inputArtistAppleListener() {
    if (widget.state.inputArtistApple.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updateItunes(widget.state.inputArtistApple.text);
    }
  }

  void inputCopyrightPListener() {
    if (widget.state.inputCopyrightP.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updatePCopy(widget.state.inputCopyrightP.text);
    }
  }

  void inputCopyrightCListener() {
    if (widget.state.inputCopyrightC.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updateCCopy(widget.state.inputCopyrightC.text);
    }
  }

  void inputPrevReleasedListener() {
    if (widget.state.inputPrevReleased.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updateRelease(widget.state.inputPrevReleased.text);
    }
  }

  void inputReleaseIdListener() {
    if (widget.state.inputReleaseId.text.isNotEmpty) {
      context
          .read<DataAlbumAudioVideo>()
          .updateReleaseId(widget.state.inputReleaseId.text);
    }
  }

  void inputUpcListener() {
    if (widget.state.inputUpc.text.isNotEmpty) {
      context.read<DataAlbumAudioVideo>().updateUpc(widget.state.inputUpc.text);
    }
  }
}
