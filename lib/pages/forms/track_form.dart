import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class TrackForm extends StatefulWidget {
  const TrackForm({
    Key? key,
  }) : super(key: key);

  @override
  _TrackFormState createState() => _TrackFormState();
}

class _TrackFormState extends State<TrackForm> {
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
                  // VDropDownGenre(
                  //   value: widget.state.genreRes1Tracks,
                  //   onChanged: (GenreRes? data) {
                  //     setState(() {
                  //       widget.state.genreRes1Tracks = data;
                  //     });
                  //   },
                  //   items: widget.state.listGenre
                  //       .map<DropdownMenuItem<GenreRes>>((GenreRes value) {
                  //     return DropdownMenuItem<GenreRes>(
                  //       value: value,
                  //       child: Text(value.name),
                  //     );
                  //   }).toList(),
                  //   borderColor: CPPrimaryColor.withOpacity(0.1),
                  //   icon: const Icon(Icons.arrow_drop_down),
                  // ),
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
                  // VDropDownGenre(
                  //   value: widget.state.genreRes2Tracks,
                  //   onChanged: (GenreRes? data) {
                  //     setState(() {
                  //       widget.state.genreRes2Tracks = data;
                  //     });
                  //   },
                  //   items: widget.state.listGenre
                  //       .map<DropdownMenuItem<GenreRes>>((GenreRes value) {
                  //     return DropdownMenuItem<GenreRes>(
                  //       value: value,
                  //       child: Text(value.name),
                  //     );
                  //   }).toList(),
                  //   borderColor: CPPrimaryColor.withOpacity(0.1),
                  //   icon: const Icon(Icons.arrow_drop_down),
                  // ),
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
                    "Label name",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: black7,
                  ),
                  const SizedBox(height: 8),
                  // VDropDownLabel(
                  //   value: widget.state.mainLabel,
                  //   onChanged: (LabelRes? data) {
                  //     setState(() {
                  //       widget.state.mainLabel = data ??
                  //           const LabelRes(
                  //             id: 0,
                  //             nama: '',
                  //             labelCode: 0,
                  //           );
                  //     });
                  //   },
                  //   items: widget.state.listLabelReq
                  //       .map<DropdownMenuItem<LabelRes>>((LabelRes value) {
                  //     return DropdownMenuItem<LabelRes>(
                  //       value: value,
                  //       child: Text(value.nama),
                  //     );
                  //   }).toList(),
                  //   borderColor: CPPrimaryColor.withOpacity(0.1),
                  //   icon: const Icon(Icons.arrow_drop_down),
                  // ),
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
                  ),
                ],
              ),
            ),
          ],
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
            // Visibility(
            //   visible: widget.state.tracksSelectInputIsrcCode == 0,
            //   child: Container(
            //     margin: const EdgeInsets.only(top: 5.0),
            //     child: VInputText(
            //       'Enter',
            //       radius: 8,
            //       outlineColor: grey10,
            //       activeColor: grey10,
            //       fontSize: 14,
            //       hintFontSize: 14.0,
            //       hintTextColor: grey4,
            //       textColor: grey7,
            //       keyboardType: TextInputType.number,
            //       fillColor: Theme.of(context).colorScheme.onPrimary,
            //     ),
            //   ),
            // ),
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
            // Visibility(
            //   visible: widget.state.tracksSelectInputExplicitLyrics == 0,
            //   child: Container(
            //     margin: const EdgeInsets.only(top: 5.0),
            //     child: VInputText(
            //       'Enter',
            //       radius: 8,
            //       outlineColor: grey10,
            //       activeColor: grey10,
            //       fontSize: 14,
            //       hintFontSize: 14.0,
            //       hintTextColor: grey4,
            //       textColor: grey7,
            //       fillColor: Theme.of(context).colorScheme.onPrimary,
            //     ),
            //   ),
            // ),
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
            // Visibility(
            //   visible: (widget.state.tracksSelectInputArtistSpotify == 0),
            //   child: Container(
            //     margin: const EdgeInsets.only(top: 5.0),
            //     child: VInputText(
            //       'Enter',
            //       radius: 8,
            //       outlineColor: grey10,
            //       activeColor: grey10,
            //       fontSize: 14,
            //       hintFontSize: 14.0,
            //       hintTextColor: grey4,
            //       textColor: grey7,
            //       fillColor: Theme.of(context).colorScheme.onPrimary,
            //     ),
            //   ),
            // ),
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
                Radio<bool>(
                  groupValue: false,
                  value: false,
                  onChanged: (val) {},
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
            // Visibility(
            //   visible: (widget.state.tracksSelectInputArtistApple == 0),
            //   child: Container(
            //     margin: const EdgeInsets.only(top: 5.0),
            //     child: VInputText(
            //       'Enter',
            //       radius: 8,
            //       outlineColor: grey10,
            //       activeColor: grey10,
            //       fontSize: 14,
            //       hintFontSize: 14.0,
            //       hintTextColor: grey4,
            //       textColor: grey7,
            //       fillColor: Theme.of(context).colorScheme.onPrimary,
            //     ),
            //   ),
            // ),
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
        // VDropDownLanguage(
        //   value: widget.state.languageResTrack,
        //   onChanged: (LanguageRes? data) {
        //     setState(() {
        //       widget.state.languageResTrack = data;
        //     });
        //   },
        //   items: widget.state.listLanguage
        //       .map<DropdownMenuItem<LanguageRes>>((LanguageRes value) {
        //     return DropdownMenuItem<LanguageRes>(
        //       value: value,
        //       child: Text(value.name),
        //     );
        //   }).toList(),
        //   borderColor: CPPrimaryColor.withOpacity(0.1),
        //   icon: const Icon(Icons.arrow_drop_down),
        // ),
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
                  // PlatformFile? fileAudio = await widget.state.pilihAudio();
                  // if (fileAudio != null) {
                  //   final fileName = fileAudio.name;
                  //   final kb = fileAudio.size / 1024;
                  //   final mb = kb / 1024;
                  //   final fileSize = mb >= 1
                  //       ? '${mb.toStringAsFixed(2)} MB'
                  //       : '${kb.toStringAsFixed(2)} KB';

                  //   setState(() {
                  //     widget.state.audio = fileAudio;
                  //     widget.state.fileNameAudio = '${fileName}';
                  //     widget.state.sizeAudio = fileSize;
                  //   });
                  // }
                },
                child: buildAudio(),
              ),
            ),
            // Expanded(
            //   flex: 2,
            //   child: (widget.state.audio == null)
            //       ? Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             vText(
            //               "Drag your file here or click to upload",
            //               fontSize: 12,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             vText(
            //               "Stereo WAV file only. Minimum bit depth: 16 bit, sample rate: 44.1 kHz",
            //               fontSize: 10,
            //               fontWeight: FontWeight.w400,
            //             ),
            //           ],
            //         )
            //       : Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             vText(
            //               "File name : ${widget.state.fileNameAudio}",
            //               fontSize: 12,
            //               maxLines: 2,
            //               fontWeight: FontWeight.w500,
            //             ),
            //             vText(
            //               "Size : ${widget.state.sizeAudio}",
            //               fontSize: 12,
            //               maxLines: 2,
            //               fontWeight: FontWeight.w400,
            //             ),
            //           ],
            //         ),
            // ),
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
