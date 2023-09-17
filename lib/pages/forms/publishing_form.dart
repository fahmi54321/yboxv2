import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';
import 'package:flutter/material.dart';

class PublishingForm extends StatefulWidget {
  const PublishingForm({super.key});

  @override
  PublishingFormState createState() => PublishingFormState();
}

class PublishingFormState extends State<PublishingForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildFormContributor(),
      ],
    );
  }

  Widget buildFormContributor() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        contributorNameWidget(),
        const SizedBox(height: 15.0),
        roleWidget(),
        const SizedBox(height: 15.0),
        shareWidget(),
        const SizedBox(height: 15.0),
        publishingWidget(),
        const SizedBox(height: 15.0),
      ],
    );
  }

  Widget publishingWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Publishing",
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: black7,
        ),
        const SizedBox(height: 8),
        // VDropDownPublishing(
        //   value: widget.state.pubPublishings,
        //   onChanged: (PublishingRes? data) {
        //     setState(() {
        //       widget.state.pubPublishings = data;
        //     });
        //   },
        //   items: widget.state.listPublishing
        //       .map<DropdownMenuItem<PublishingRes>>((PublishingRes value) {
        //     return DropdownMenuItem<PublishingRes>(
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

  Widget shareWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        vText(
          "Share %",
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
          keyboardType: TextInputType.number,
          fillColor: Theme.of(context).colorScheme.onPrimary,
        ),
      ],
    );
  }

  Widget roleWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Role",
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: black7,
        ),
        const SizedBox(height: 8),
        // VDropDownRole(
        //   value: widget.state.pubRoles,
        //   onChanged: (RolesRes? data) {
        //     setState(() {
        //       widget.state.pubRoles = data;
        //     });
        //   },
        //   items: widget.state.listRole
        //       .map<DropdownMenuItem<RolesRes>>((RolesRes value) {
        //     return DropdownMenuItem<RolesRes>(
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

  Widget contributorNameWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Contributor Name",
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
}
