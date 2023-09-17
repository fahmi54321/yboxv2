import 'package:provider/provider.dart';
import 'package:yboxv2/pages/forms/widget/cover_image.dart';
import 'package:yboxv2/pages/forms/widget/main_state.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';
import 'package:flutter/material.dart';

class MainForm extends StatefulWidget {
  const MainForm({super.key});

  @override
  MainFormState createState() => MainFormState();
}

class MainFormState extends State<MainForm> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainState(),
      child: Consumer(builder: (BuildContext context, MainState state, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            coverImage(state),
            const SizedBox(height: 15),
            languageWidget(),
            const SizedBox(height: 15),
            titleWidget(context),
            const SizedBox(height: 15),
            artistWidget(state),
            const SizedBox(height: 15),
            infoWidget(state),
            const SizedBox(height: 15),
          ],
        );
      }),
    );
  }

  Widget titleWidget(BuildContext context) {
    return Column(
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
        // VDropDownLanguage(
        //   value: state.languageResMain,
        //   onChanged: (LanguageRes? data) {
        //     setState(() {
        //       state.languageResMain = data;
        //     });
        //   },
        //   items: state.listLanguage
        //       .map<DropdownMenuItem<LanguageRes>>((LanguageRes value) {
        //     return DropdownMenuItem<LanguageRes>(
        //       value: value,
        //       child: Text(value.name),
        //     );
        //   }).toList(),
        //   borderColor: grey10,
        //   icon: const Icon(
        //     Icons.arrow_drop_down,
        //     color: grey10,
        //   ),
        // ),
      ],
    );
  }

  Widget coverImage(MainState state) {
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
                  // // ambil file
                  // File? file = await widget.state.pilihFoto();
                  // if (file != null) {
                  //   setState(() {
                  //     widget.state.coverImage = file;
                  //   });
                  // }
                },
                child: CoverImage(),
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
                            '${index + 1}. ${state.rulesOfImage[index]}',
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

  Widget infoWidget(MainState state) {
    return Column(
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
                  // VDropDownGenre(
                  //   value: state.genreRes1Main,
                  //   onChanged: (GenreRes? data) {
                  //     setState(() {
                  //       state.genreRes1Main = data;
                  //     });
                  //   },
                  //   items: state.listGenre
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
                  //   value: state.genreRes2Main,
                  //   onChanged: (GenreRes? data) {
                  //     setState(() {
                  //       state.genreRes2Main = data;
                  //     });
                  //   },
                  //   items: state.listGenre
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
        //   visible: (state.selectInputPrevRelease == state.yesInputPrevRelease),
        //   child: InkWell(
        //     onTap: () async {
        //       DateTime? newDate = await showDatePicker(
        //         context: context,
        //         initialDate: DateTime.now(),
        //         firstDate: DateTime(2000),
        //         lastDate: DateTime.now(),
        //       );

        //       // if 'Cancel' => null
        //       if (newDate == null) return;

        //       //if 'Ok' => DateTime
        //       setState(() {
        //         state.inputPrevReleased.text = Utils.dateToString(
        //           newDate,
        //           Utils.SEND_DATE_FORMAT2,
        //         );
        //       });
        //     },
        //   child: Container(
        //     margin: const EdgeInsets.only(top: 5.0),
        //     child: VInputText(
        //       'mm/dd/yyyy...',
        //       radius: 8,
        //           outlineColor: grey10,
        //           activeColor: grey10,
        //           fontSize: 14,
        //           hintFontSize: 14.0,
        //           hintTextColor: grey4,
        //           textColor: grey7,
        //           fillColor: Theme.of(context).colorScheme.onPrimary,
        //     ),
        //   ),
        // ),
        // ),
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
          ],
        ),
        // Visibility(
        //   visible: (state.selectInputLabel == state.yesInputLabel),
        //   child: Container(
        //     margin: const EdgeInsets.only(top: 10.0),
        //     child: Row(
        //       children: [
        //         Expanded(
        //           flex: 1,
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //   vText(
        //     "Label name",
        //     fontSize: 14,
        // fontWeight: FontWeight.w400,
        // color: black7,
        //   ),
        //               const SizedBox(height: 8),
        //               (widget.state.isLoadingLabelReq == true)
        //                   ? CircularProgressIndicator(
        //                       color: CPPrimaryColor,
        //                     )
        //                   : VDropDownLabel(
        //                       value: state.mainLabel,
        //                       onChanged: (LabelRes? data) {
        //                         setState(() {
        //                           state.mainLabel = data ??
        //                               const LabelRes(
        //                                 id: 0,
        //                                 nama: '',
        //                                 labelCode: 0,
        //                               );
        //                         });
        //                       },
        //                       items: state.listLabelReq
        //                           .map<DropdownMenuItem<LabelRes>>(
        //                               (LabelRes value) {
        //                         return DropdownMenuItem<LabelRes>(
        //                           value: value,
        //                           child: Text(value.nama),
        //                         );
        //                       }).toList(),
        //                       borderColor: CPPrimaryColor.withOpacity(0.1),
        //                       icon: const Icon(Icons.arrow_drop_down),
        //                     ),
        //             ],
        //           ),
        //         ),
        //         const SizedBox(width: 10),
        //         Expanded(
        //           flex: 1,
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //   vText(
        //     "Internal release ID",
        //     fontSize: 14,
        // fontWeight: FontWeight.w400,
        // color: black7,
        //   ),
        //               const SizedBox(height: 8),
        //               VInputText(
        //                 'Input here...',
        //     radius: 8,
        // outlineColor: grey10,
        // activeColor: grey10,
        // fontSize: 14,
        // hintFontSize: 14.0,
        // hintTextColor: grey4,
        // textColor: grey7,
        // fillColor: Theme.of(context).colorScheme.onPrimary,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
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
        // Visibility(
        //   visible: (state.selectInputUPC == state.yesInputUPC),
        //   child: Container(
        //     margin: const EdgeInsets.only(top: 5.0),
        //     child: VInputText(
        // 'Input here...',
        // radius: 8,
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
    );
  }

  Widget artistWidget(MainState state) {
    return Column(
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
        ),
      ],
    );
  }
}
