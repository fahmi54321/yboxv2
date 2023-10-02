import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/pages/forms/form_track_state.dart';
import 'package:yboxv2/pages/forms/widget/cover_image.dart';
import 'package:yboxv2/pages/provider/data_track.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/utils.dart';
import 'package:yboxv2/widget/v_dropdown.dart';
import 'package:yboxv2/widget/v_text.dart';

class TrackForm2 extends StatefulWidget {
  GenreRes? genreRes1Tracks;
  GenreRes? genreRes2Tracks;
  LanguageRes? languageResTrack;

  final List<GenreRes> listGenre;
  final List<LanguageRes> listLanguage;
  final TrackFormState state;
  TrackForm2({
    super.key,
    required this.state,
    this.genreRes1Tracks,
    this.genreRes2Tracks,
    this.languageResTrack,
    this.listGenre = const [],
    this.listLanguage = const [],
  });

  @override
  State<TrackForm2> createState() => _TrackForm2State();
}

class _TrackForm2State extends State<TrackForm2> {
  @override
  void initState() {
    super.initState();

    widget.state.tracksInputTitleRelease
        .addListener(tracksInputTitleReleaseListener);
    widget.state.tracksInputTitleVersion
        .addListener(tracksInputTitleVersionListener);
    widget.state.tracksInputArtist.addListener(tracksInputArtistListener);
    widget.state.tracksInputArtistSpotify
        .addListener(tracksInputArtistSpotifyListener);
    widget.state.tracksInputArtistApple
        .addListener(tracksInputArtistAppleListener);
    widget.state.tracksInputLyrics.addListener(tracksInputLyricsListener);
    widget.state.tracksInputCopyrightP
        .addListener(tracksInputCopyrightPListener);
    widget.state.tracksInputCopyrightC
        .addListener(tracksInputCopyrightCListener);
    widget.state.tracksInputInternalTracksId
        .addListener(tracksInputInternalTracksIdListener);
    widget.state.tracksInputIsrcCode.addListener(tracksInputIsrcCodeListener);
  }

  @override
  void dispose() {
    widget.state.tracksInputTitleRelease
        .removeListener(tracksInputTitleReleaseListener);
    widget.state.tracksInputTitleVersion
        .removeListener(tracksInputTitleVersionListener);
    widget.state.tracksInputArtist.removeListener(tracksInputArtistListener);
    widget.state.tracksInputArtistSpotify
        .removeListener(tracksInputArtistSpotifyListener);
    widget.state.tracksInputArtistApple
        .removeListener(tracksInputArtistAppleListener);
    widget.state.tracksInputLyrics.removeListener(tracksInputLyricsListener);
    widget.state.tracksInputCopyrightP
        .removeListener(tracksInputCopyrightPListener);
    widget.state.tracksInputCopyrightC
        .removeListener(tracksInputCopyrightCListener);
    widget.state.tracksInputInternalTracksId
        .removeListener(tracksInputInternalTracksIdListener);
    widget.state.tracksInputIsrcCode
        .removeListener(tracksInputIsrcCodeListener);
    super.dispose();
  }

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
        coverImage(),
        const SizedBox(height: 15),
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

  Widget coverImage() {
    return Column(
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
                      context.read<DataTrack>().updateCoverImage(file);
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
          controller: widget.state.tracksInputLyrics,
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
                      if (data != null) {
                        context
                            .read<DataTrack>()
                            .updateGenreInfo(data.id.toString());
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
                    value: widget.genreRes2Tracks,
                    onChanged: (GenreRes? data) {
                      setState(() {
                        widget.genreRes2Tracks = data;
                      });
                      if (data != null) {
                        context
                            .read<DataTrack>()
                            .updateGenre2Info(data.id.toString());
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
                    controller: widget.state.tracksInputCopyrightP,
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
                    controller: widget.state.tracksInputCopyrightC,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
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
                controller: widget.state.tracksInputInternalTracksId,
              ),
            ],
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
                  groupValue: widget.state.tracksSelectInputIsrcCode,
                  value: widget.state.tracksNoInputIsrcCode,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputIsrcCode = val ?? 0;
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
                  groupValue: widget.state.tracksSelectInputIsrcCode,
                  value: widget.state.tracksYesInputIsrcCode,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputIsrcCode = val ?? 0;
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
              visible: widget.state.tracksSelectInputIsrcCode == 1,
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
                  controller: widget.state.tracksInputIsrcCode,
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
                  groupValue: widget.state.tracksSelectInputExplicitLyrics,
                  value: widget.state.tracksNoInputExplicitLyrics,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputExplicitLyrics = val ?? 0;
                    });
                    context.read<DataTrack>().updateRdolyrics(widget
                        .state.tracksSelectInputExplicitLyrics
                        .toString());
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
                  groupValue: widget.state.tracksSelectInputExplicitLyrics,
                  value: widget.state.tracksYesInputExplicitLyrics,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputExplicitLyrics = val ?? 0;
                    });
                    context.read<DataTrack>().updateRdolyrics(widget
                        .state.tracksSelectInputExplicitLyrics
                        .toString());
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
              visible: widget.state.tracksSelectInputExplicitLyrics == 1,
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
                  controller: widget.state.tracksInputExplicitLyrics,
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
                  groupValue: widget.state.tracksSelectInputTrackSong,
                  value: widget.state.tracksOriginSong,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputTrackSong = val ?? 0;
                    });

                    context.read<DataTrack>().updateRdothisTracks(
                        widget.state.tracksSelectInputTrackSong.toString());
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
                  groupValue: widget.state.tracksSelectInputTrackSong,
                  value: widget.state.tracksPublicSong,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputTrackSong = val ?? 0;
                    });
                    context.read<DataTrack>().updateRdothisTracks(
                        widget.state.tracksSelectInputTrackSong.toString());
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
                  groupValue: widget.state.tracksSelectInputArtistSpotify,
                  value: widget.state.tracksNoInputArtistSpotify,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputArtistSpotify = val ?? 0;
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
                  groupValue: widget.state.tracksSelectInputArtistSpotify,
                  value: widget.state.tracksYesInputArtistSpotify,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputArtistSpotify = val ?? 0;
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
              visible: (widget.state.tracksSelectInputArtistSpotify == 1),
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
                  controller: widget.state.tracksInputArtistSpotify,
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
                  groupValue: widget.state.tracksSelectInputArtistApple,
                  value: widget.state.tracksNoInputArtistApple,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputArtistApple = val ?? 0;
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
                  groupValue: widget.state.tracksSelectInputArtistApple,
                  value: widget.state.tracksYesInputArtistApple,
                  onChanged: (val) {
                    setState(() {
                      widget.state.tracksSelectInputArtistApple = val ?? 0;
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
              visible: (widget.state.tracksSelectInputArtistApple == 1),
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
                  controller: widget.state.tracksInputArtistApple,
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
          controller: widget.state.tracksInputArtist,
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
                    controller: widget.state.tracksInputTitleRelease,
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
                    controller: widget.state.tracksInputTitleVersion,
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

            if (data != null) {
              context
                  .read<DataTrack>()
                  .updateLanguageTrackId(data.id.toString());
            }
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
                      widget.state.audio = fileAudio;
                      widget.state.fileNameAudio = fileName;
                      widget.state.sizeAudio = fileSize;
                    });

                    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                      context.read<DataTrack>().updateAudio(fileAudio);
                    });
                  }
                },
                child: buildAudio(
                  fileAudio: widget.state.audio,
                  editAudio: widget.state.audioEdit,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: (widget.state.audio == null)
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
                          "File name : ${widget.state.fileNameAudio}",
                          fontSize: 12,
                          maxLines: 2,
                          fontWeight: FontWeight.w500,
                        ),
                        vText(
                          "Size : ${widget.state.sizeAudio}",
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
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: primaryColor),
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

  void tracksInputTitleReleaseListener() {
    if (widget.state.tracksInputTitleRelease.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateTrackTitle(widget.state.tracksInputTitleRelease.text);
    }
  }

  void tracksInputTitleVersionListener() {
    if (widget.state.tracksInputTitleVersion.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateTitleVersionTrack(widget.state.tracksInputTitleVersion.text);
    }
  }

  void tracksInputArtistListener() {
    if (widget.state.tracksInputArtist.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateArtistTrack(widget.state.tracksInputArtist.text);
    }
  }

  void tracksInputArtistSpotifyListener() {
    if (widget.state.tracksInputArtistSpotify.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateSpotifyTrack(widget.state.tracksInputArtistSpotify.text);
    }
  }

  void tracksInputArtistAppleListener() {
    if (widget.state.tracksInputArtistApple.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateItunesTrack(widget.state.tracksInputArtistApple.text);
    }
  }

  void tracksInputLyricsListener() {
    if (widget.state.tracksInputLyrics.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateLirik(widget.state.tracksInputLyrics.text);
    }
  }

  void tracksInputCopyrightPListener() {
    if (widget.state.tracksInputCopyrightP.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updatePCopyInfo(widget.state.tracksInputCopyrightP.text);
    }
  }

  void tracksInputCopyrightCListener() {
    if (widget.state.tracksInputCopyrightC.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateStartTime(widget.state.tracksInputCopyrightC.text);
    }
  }

  void tracksInputInternalTracksIdListener() {
    if (widget.state.tracksInputInternalTracksId.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateTrackIdInfo(widget.state.tracksInputInternalTracksId.text);
    }
  }

  void tracksInputIsrcCodeListener() {
    if (widget.state.tracksInputIsrcCode.text.isNotEmpty) {
      context
          .read<DataTrack>()
          .updateIsrc(widget.state.tracksInputIsrcCode.text);
    }
  }
}
