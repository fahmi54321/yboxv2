import 'dart:io';

import 'package:flutter/material.dart';
import 'package:yboxv2/anim/animation_main_form.dart';
import 'package:yboxv2/models/general/genre_res.dart';

import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/pages/forms/widget/cover_image.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_dropdown.dart';
import 'package:yboxv2/widget/v_text.dart';

class MainForm extends StatefulWidget {
  LanguageRes? languageResMain;
  LanguageRes? languageResTrack;
  GenreRes? genreRes1Main;
  GenreRes? genreRes2Main;
  LeaderRes? mainLabel;
  final List<LanguageRes> listLanguage;
  final List<GenreRes> listGenre;
  final List<LeaderRes> listLabelReq;
  MainForm({
    super.key,
    this.languageResMain,
    this.languageResTrack,
    this.listLanguage = const [],
    this.genreRes1Main,
    this.listGenre = const [],
    this.genreRes2Main,
    this.mainLabel,
    this.listLabelReq = const [],
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
    _controller.forward();
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
      mainLabel: widget.mainLabel,
      listLanguage: widget.listLanguage,
      listGenre: widget.listGenre,
      listLabelReq: widget.listLabelReq,
    );
  }
}

class MainFormWidget extends StatefulWidget {
  LanguageRes? languageResMain;
  LanguageRes? languageResTrack;
  GenreRes? genreRes1Main;
  GenreRes? genreRes2Main;
  LeaderRes? mainLabel;
  final List<LanguageRes> listLanguage;
  final List<GenreRes> listGenre;
  final List<LeaderRes> listLabelReq;
  final AnimationController controller;
  final AnimationMainForm animation;

  MainFormWidget({
    super.key,
    this.languageResMain,
    this.languageResTrack,
    this.listLanguage = const [],
    this.genreRes1Main,
    this.listGenre = const [],
    this.genreRes2Main,
    this.mainLabel,
    this.listLabelReq = const [],
    required this.controller,
  }) : animation = AnimationMainForm(
          controller: controller,
        );

  @override
  State<MainFormWidget> createState() => _MainFormWidgetState();
}

class _MainFormWidgetState extends State<MainFormWidget> {
  int selectInputPrevRelease = 0;
  int yesInputPrevRelease = 1;
  int selectInputLabel = 0;
  int yesInputLabel = 1;
  int selectInputUPC = 0;
  int yesInputUPC = 1;
  int noInputLabel = 0;
  int noInputPrevRelease = 0;
  int noInputUPC = 0;

  File? coverImageFile;

  //title
  TextEditingController inputTitleRelease = TextEditingController();
  TextEditingController inputTitleVersion = TextEditingController();

  //artist
  TextEditingController inputArtist = TextEditingController();
  int yesInputArtistSpotify = 1;
  int yesInputArtistApple = 1;
  int noInputArtistSpotify = 0;
  int noInputArtistApple = 0;
  int selectInputArtistSpotify = 0;
  int selectInputArtistApple = 0;
  TextEditingController inputArtistSpotify = TextEditingController();
  TextEditingController inputArtistApple = TextEditingController();

  // info
  TextEditingController inputCopyrightP = TextEditingController();
  TextEditingController inputCopyrightC = TextEditingController();
  TextEditingController inputPrevReleased = TextEditingController();
  TextEditingController inputReleaseId = TextEditingController();
  TextEditingController inputUpc = TextEditingController();

  List<String> rulesOfImage = [
    'File format: PNG, GIF, BMP, TIF, JPG or JPEG.',
    'Color space: RGB.',
    'Minimum dimensions: 1400x1400 pixels, but recommend 3000x3000 pixels',
    'Square image: width and height must be the same.',
    'Images may not contain more than 50 megapixels or be larger than 10 Mb.',
    'Your image cannot be stretched, upscaled, or appear to be low-resolution.',
    'The information on your cover art must match your album title and artist name.',
    'Website addresses, social media links and contact information are not permitted on album artwork.',
    'Your cover art may not include sexually explicit imagery.',
    'Your cover art cannot be misleading by figuring another artists name more prominently than yours.',
    'You may not use a third-party logo or trademark without the express written permission from the trademark holder.',
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
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
                      controller: inputTitleRelease,
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
                      controller: inputTitleVersion,
                    ),
                  ],
                ),
              ),
            ],
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
                        coverImageFile = file;
                      });
                    }
                  },
                  child: CoverImage(
                    inputCover: coverImageFile,
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
                              '${index + 1}. ${rulesOfImage[index]}',
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
                      controller: inputCopyrightP,
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
                      controller: inputCopyrightC,
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
                groupValue: selectInputPrevRelease,
                value: noInputPrevRelease,
                onChanged: (val) {
                  setState(() {
                    selectInputPrevRelease = val ?? 0;
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
                groupValue: selectInputPrevRelease,
                value: yesInputPrevRelease,
                onChanged: (val) {
                  setState(() {
                    selectInputPrevRelease = val ?? 0;
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
            visible: (selectInputPrevRelease == yesInputPrevRelease),
            child: InkWell(
              onTap: () async {
                DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );

                // if 'Cancel' => null
                if (newDate == null) return;

                //if 'Ok' => DateTime
                setState(() {
                  inputPrevReleased.text = Utils.dateToString(
                    newDate,
                    Utils.sendDateFormat2,
                  );
                });
              },
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
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  controller: inputPrevReleased,
                ),
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
                    groupValue: selectInputLabel,
                    value: noInputLabel,
                    onChanged: (val) {
                      setState(() {
                        selectInputLabel = val ?? 0;
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
                    groupValue: selectInputLabel,
                    value: yesInputLabel,
                    onChanged: (val) {
                      setState(() {
                        selectInputLabel = val ?? 0;
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
            visible: (selectInputLabel == yesInputLabel),
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "Label name",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: black7,
                        ),
                        const SizedBox(height: 8),
                        VDropDownLabel(
                          radius: 8.0,
                          fontSize: 14.0,
                          colorText: grey7,
                          borderColor: grey10,
                          value: widget.mainLabel,
                          onChanged: (LeaderRes? data) {
                            setState(() {
                              widget.mainLabel = data ??
                                  const LeaderRes(
                                    id: '',
                                    name: '',
                                    image: '',
                                  );
                            });
                          },
                          items: widget.listLabelReq
                              .map<DropdownMenuItem<LeaderRes>>(
                                  (LeaderRes value) {
                            return DropdownMenuItem<LeaderRes>(
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
                          controller: inputReleaseId,
                        ),
                      ],
                    ),
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
                groupValue: selectInputUPC,
                value: noInputUPC,
                onChanged: (val) {
                  setState(() {
                    selectInputUPC = val ?? 0;
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
                groupValue: selectInputUPC,
                value: yesInputUPC,
                onChanged: (val) {
                  setState(() {
                    selectInputUPC = val ?? 0;
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
            visible: (selectInputUPC == yesInputUPC),
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
                controller: inputUpc,
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
            controller: inputArtist,
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
                groupValue: selectInputArtistSpotify,
                value: noInputArtistSpotify,
                onChanged: (val) {
                  setState(() {
                    selectInputArtistSpotify = val ?? 0;
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
                groupValue: selectInputArtistSpotify,
                value: yesInputArtistSpotify,
                onChanged: (val) {
                  setState(() {
                    selectInputArtistSpotify = val ?? 0;
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
          const SizedBox(height: 5),
          VInputText(
            'Input here..',
            radius: 8,
            outlineColor: grey10,
            activeColor: grey10,
            fontSize: 14,
            hintFontSize: 14.0,
            hintTextColor: grey4,
            textColor: grey7,
            fillColor: Theme.of(context).colorScheme.onPrimary,
            controller: inputArtistSpotify,
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
                groupValue: selectInputArtistApple,
                value: noInputArtistApple,
                onChanged: (val) {
                  setState(() {
                    selectInputArtistApple = val ?? 0;
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
                groupValue: selectInputArtistApple,
                value: yesInputArtistApple,
                onChanged: (val) {
                  setState(() {
                    selectInputArtistApple = val ?? 0;
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
          const SizedBox(height: 5),
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
            controller: inputArtistApple,
          ),
        ],
      ),
    );
  }
}
