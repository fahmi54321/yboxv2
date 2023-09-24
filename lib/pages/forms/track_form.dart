import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/leader/leader_res.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_dropdown.dart';
import 'package:yboxv2/widget/v_text.dart';

class TrackForm extends StatefulWidget {
  GenreRes? genreRes1Tracks;
  GenreRes? genreRes2Tracks;
  LeaderRes? trackLabel;
  LanguageRes? languageResTrack;

  final List<GenreRes> listGenre;
  final List<LeaderRes> listLabelReq;
  final List<LanguageRes> listLanguage;
  final String formCode;
  TrackForm({
    Key? key,
    required this.formCode,
    this.genreRes1Tracks,
    this.genreRes2Tracks,
    this.trackLabel,
    this.languageResTrack,
    this.listGenre = const [],
    this.listLabelReq = const [],
    this.listLanguage = const [],
  }) : super(key: key);

  @override
  State<TrackForm> createState() => _TrackFormState();
}

class _TrackFormState extends State<TrackForm> {
  // audio
  PlatformFile? audio;
  String? fileNameAudio;
  String? sizeAudio;

  // title
  TextEditingController tracksInputTitleRelease = TextEditingController();
  TextEditingController tracksInputTitleVersion = TextEditingController();

  // artist
  TextEditingController tracksInputArtist = TextEditingController();
  int tracksYesInputArtistSpotify = 1;
  int tracksYesInputArtistApple = 1;
  int tracksNoInputArtistSpotify = 0;
  int tracksNoInputArtistApple = 0;
  int tracksSelectInputArtistSpotify = 0;
  int tracksSelectInputArtistApple = 0;
  TextEditingController tracksInputArtistSpotify = TextEditingController();
  TextEditingController tracksInputArtistApple = TextEditingController();

  // info
  TextEditingController tracksInputLyrics = TextEditingController();
  TextEditingController tracksInputCopyrightP = TextEditingController();
  TextEditingController tracksInputCopyrightC = TextEditingController();
  TextEditingController tracksInputInternalTracksId = TextEditingController();
  TextEditingController tracksInputIsrcCode = TextEditingController();
  TextEditingController tracksInputExplicitLyrics = TextEditingController();
  int tracksYesInputIsrcCode = 1;
  int tracksPublicSong = 1;
  int tracksYesInputExplicitLyrics = 1;
  int tracksNoInputIsrcCode = 0;
  int tracksOriginSong = 0;
  int tracksNoInputExplicitLyrics = 0;
  int tracksSelectInputIsrcCode = 0;
  int tracksSelectInputExplicitLyrics = 0;
  int tracksSelectInputTrackSong = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildFormTrack(),
      ],
    );
  }

  Widget buildFormTrack() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        audioWidget(),
        const SizedBox(height: 15.0),
        languageWidget(),
        const SizedBox(height: 15.0),
        titleWidget(),
        const SizedBox(height: 15.0),
        artistWidget(),
        const SizedBox(height: 15.0),
        artistSpotifyOrAppleWidget(),
        const SizedBox(height: 15.0),
        additionalInfoWidget(),
        const SizedBox(height: 15.0),
        advanceInfoWidget(),
        const SizedBox(height: 15.0),
        lyricsWidget(),
        const SizedBox(height: 15.0),
      ],
    );
  }

  Widget lyricsWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Lyrics (optional)",
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: black7,
        ),
        const SizedBox(height: 16),
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
          controller: tracksInputLyrics,
        ),
      ],
    );
  }

  Widget advanceInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vText(
              'Advanced info (optional)',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: black7,
            ),
            const SizedBox(height: 8),
            const Divider(),
          ],
        ),
        const SizedBox(height: 8),
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
                    value: widget.genreRes1Tracks,
                    onChanged: (GenreRes? data) {
                      setState(() {
                        widget.genreRes1Tracks = data;
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
                    value: widget.genreRes2Tracks,
                    onChanged: (GenreRes? data) {
                      setState(() {
                        widget.genreRes2Tracks = data;
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
                    controller: tracksInputCopyrightP,
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
                    "Preview start time",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: black7,
                  ),
                  const SizedBox(height: 8),
                  VInputText(
                    'text',
                    radius: 8,
                    outlineColor: grey10,
                    activeColor: grey10,
                    fontSize: 14,
                    hintFontSize: 14.0,
                    hintTextColor: grey4,
                    keyboardType: TextInputType.number,
                    textColor: grey7,
                    fillColor: Theme.of(context).colorScheme.onPrimary,
                    controller: tracksInputCopyrightC,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Visibility(
          visible:
              (widget.formCode == 'ringtone' || widget.formCode == 'video'),
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
                        value: widget.trackLabel,
                        onChanged: (LeaderRes? data) {
                          setState(() {
                            widget.trackLabel = data ??
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
                        "Internal track ID",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: black7,
                      ),
                      const SizedBox(height: 8),
                      VInputText(
                        'text',
                        radius: 8,
                        outlineColor: grey10,
                        activeColor: grey10,
                        fontSize: 14,
                        hintFontSize: 14.0,
                        hintTextColor: grey4,
                        keyboardType: TextInputType.number,
                        textColor: grey7,
                        fillColor: Theme.of(context).colorScheme.onPrimary,
                        controller: tracksInputInternalTracksId,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget additionalInfoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vText(
              'Additional info',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: black7,
            ),
            const SizedBox(height: 8),
            const Divider(),
          ],
        ),
        const SizedBox(height: 16),
        vText(
          'Do you already have an ISRC code?',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: black7,
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: tracksSelectInputIsrcCode,
                  value: tracksNoInputIsrcCode,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputIsrcCode = val ?? 0;
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
                  groupValue: tracksSelectInputIsrcCode,
                  value: tracksYesInputIsrcCode,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputIsrcCode = val ?? 0;
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
              visible: tracksSelectInputIsrcCode == 1,
              child: Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: VInputText(
                  'Enter',
                  radius: 8,
                  outlineColor: grey10,
                  activeColor: grey10,
                  fontSize: 14,
                  hintFontSize: 14.0,
                  hintTextColor: grey4,
                  textColor: grey7,
                  keyboardType: TextInputType.number,
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  controller: tracksInputIsrcCode,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        vText(
          'Explicit lyrics',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: black7,
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: tracksSelectInputExplicitLyrics,
                  value: tracksNoInputExplicitLyrics,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputExplicitLyrics = val ?? 0;
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
                  groupValue: tracksSelectInputExplicitLyrics,
                  value: tracksYesInputExplicitLyrics,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputExplicitLyrics = val ?? 0;
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
              visible: tracksSelectInputExplicitLyrics == 1,
              child: Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: VInputText(
                  'Enter',
                  radius: 8,
                  outlineColor: grey10,
                  activeColor: grey10,
                  fontSize: 14,
                  hintFontSize: 14.0,
                  hintTextColor: grey4,
                  textColor: grey7,
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  controller: tracksInputExplicitLyrics,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        vText(
          'This track is',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: black7,
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: tracksSelectInputTrackSong,
                  value: tracksOriginSong,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputTrackSong = val ?? 0;
                    });
                  },
                  activeColor: primaryColor,
                ),
                Expanded(
                  child: vText(
                    'An Original song (publishing info will be required)',
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
                  groupValue: tracksSelectInputTrackSong,
                  value: tracksPublicSong,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputTrackSong = val ?? 0;
                    });
                  },
                  activeColor: primaryColor,
                ),
                Expanded(
                  child: vText(
                    'A Public domain song (publising info will be required)',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: black7,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget artistSpotifyOrAppleWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          'Artist already on Spotify?',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: black7,
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: tracksSelectInputArtistSpotify,
                  value: tracksNoInputArtistSpotify,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputArtistSpotify = val ?? 0;
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
                  groupValue: tracksSelectInputArtistSpotify,
                  value: tracksYesInputArtistSpotify,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputArtistSpotify = val ?? 0;
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
              visible: (tracksSelectInputArtistSpotify == 1),
              child: Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: VInputText(
                  'Enter',
                  radius: 8,
                  outlineColor: grey10,
                  activeColor: grey10,
                  fontSize: 14,
                  hintFontSize: 14.0,
                  hintTextColor: grey4,
                  textColor: grey7,
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  controller: tracksInputArtistSpotify,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        vText(
          'Artist already on Apple Music?',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: black7,
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  groupValue: tracksSelectInputArtistApple,
                  value: tracksNoInputArtistApple,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputArtistApple = val ?? 0;
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
                  groupValue: tracksSelectInputArtistApple,
                  value: tracksYesInputArtistApple,
                  onChanged: (val) {
                    setState(() {
                      tracksSelectInputArtistApple = val ?? 0;
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
              visible: (tracksSelectInputArtistApple == 1),
              child: Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: VInputText(
                  'Enter',
                  radius: 8,
                  outlineColor: grey10,
                  activeColor: grey10,
                  fontSize: 14,
                  hintFontSize: 14.0,
                  hintTextColor: grey4,
                  textColor: grey7,
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  controller: tracksInputArtistApple,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget artistWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Artist (indicate ONLY ONE in this field)",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: black7,
        ),
        const SizedBox(height: 16),
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
          controller: tracksInputArtist,
        ),
      ],
    );
  }

  Widget titleWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vText(
                    "Track title",
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
                    controller: tracksInputTitleRelease,
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
                    controller: tracksInputTitleVersion,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget languageWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Language of Lyrics",
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: black7,
        ),
        const SizedBox(height: 16),
        VDropDownLanguage(
          radius: 8.0,
          fontSize: 14.0,
          colorText: grey7,
          borderColor: grey10,
          value: widget.languageResTrack,
          onChanged: (LanguageRes? data) {
            setState(() {
              widget.languageResTrack = data;
            });
          },
          items: widget.listLanguage
              .map<DropdownMenuItem<LanguageRes>>((LanguageRes value) {
            return DropdownMenuItem<LanguageRes>(
              value: value,
              child: Text(value.name),
            );
          }).toList(),
          icon: const Icon(Icons.arrow_drop_down),
        ),
      ],
    );
  }

  Widget audioWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        vText(
          "Audio file",
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: black7,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () async {
                  PlatformFile? fileAudio = await Utils.pilihAudio();
                  if (fileAudio != null) {
                    final fileName = fileAudio.name;
                    final kb = fileAudio.size / 1024;
                    final mb = kb / 1024;
                    final fileSize = mb >= 1
                        ? '${mb.toStringAsFixed(2)} MB'
                        : '${kb.toStringAsFixed(2)} KB';

                    setState(() {
                      audio = fileAudio;
                      fileNameAudio = fileName;
                      sizeAudio = fileSize;
                    });
                  }
                },
                child: buildAudio(fileAudio: audio),
              ),
            ),
            Expanded(
              flex: 2,
              child: (audio == null)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "Drag your file here or click to upload",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        vText(
                          "Stereo WAV file only. Minimum bit depth: 16 bit, sample rate: 44.1 kHz",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        vText(
                          "File name : $fileNameAudio",
                          fontSize: 12,
                          maxLines: 2,
                          fontWeight: FontWeight.w500,
                        ),
                        vText(
                          "Size : $sizeAudio",
                          fontSize: 12,
                          maxLines: 2,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildAudio({
    String editAudio = '',
    PlatformFile? fileAudio,
  }) {
    if (editAudio.isNotEmpty || fileAudio != null) {
      return Container(
        height: 50,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: vText(
            '.mp3',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: black7,
          ),
        ),
      );
    } else {
      return Container(
        height: 50,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Icon(
          Icons.add,
          size: 30,
          color: primaryColor,
        ),
      );
    }
  }
}
