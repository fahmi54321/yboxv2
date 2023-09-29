// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/models/general/publishing_res.dart';
import 'package:yboxv2/models/general/roles_res.dart';
import 'package:yboxv2/pages/forms/main_form_state_2.dart';
import 'package:yboxv2/pages/provider/data_album.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_dropdown.dart';
import 'package:yboxv2/widget/v_text.dart';

class PublishingForm extends StatefulWidget {
  RolesRes? pubRoles;
  PublishingRes? pubPublishings;
  final List<PublishingRes> listPublishing;
  final List<RolesRes> listRole;
  final MainFormState2 state;
  PublishingForm({
    super.key,
    this.pubRoles,
    this.pubPublishings,
    this.listPublishing = const [],
    this.listRole = const [],
    required this.state,
  });

  @override
  State<PublishingForm> createState() => _PublishingFormState();
}

class _PublishingFormState extends State<PublishingForm> {
  @override
  void initState() {
    super.initState();

    widget.state.tracksInputContributorName
        .addListener(tracksInputContributorNameListener);
    widget.state.tracksInputShare.addListener(tracksInputShareListener);
  }

  @override
  void dispose() {
    widget.state.tracksInputContributorName
        .removeListener(tracksInputContributorNameListener);
    widget.state.tracksInputShare.removeListener(tracksInputShareListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        VDropDownPublishing(
          radius: 8.0,
          fontSize: 14.0,
          colorText: grey7,
          borderColor: grey10,
          value: widget.pubPublishings,
          onChanged: (PublishingRes? data) {
            setState(() {
              widget.pubPublishings = data;
            });

            if (data != null) {
              context.read<DataAlbum>().updatePublishing(data.id.toString());
            }
          },
          items: widget.listPublishing
              .map<DropdownMenuItem<PublishingRes>>((PublishingRes value) {
            return DropdownMenuItem<PublishingRes>(
              value: value,
              child: Text(value.name),
            );
          }).toList(),
          icon: const Icon(Icons.arrow_drop_down),
        ),
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
          controller: widget.state.tracksInputShare,
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
        VDropDownRole(
          radius: 8.0,
          fontSize: 14.0,
          colorText: grey7,
          borderColor: grey10,
          value: widget.pubRoles,
          onChanged: (RolesRes? data) {
            setState(() {
              widget.pubRoles = data;
            });

            if (data != null) {
              context.read<DataAlbum>().updateRoleTrack(data.id.toString());
            }
          },
          items:
              widget.listRole.map<DropdownMenuItem<RolesRes>>((RolesRes value) {
            return DropdownMenuItem<RolesRes>(
              value: value,
              child: Text(value.name),
            );
          }).toList(),
          icon: const Icon(Icons.arrow_drop_down),
        ),
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
          controller: widget.state.tracksInputContributorName,
        ),
      ],
    );
  }

  void tracksInputContributorNameListener() {
    if (widget.state.tracksInputContributorName.text.isNotEmpty) {
      context
          .read<DataAlbum>()
          .updateConName(widget.state.tracksInputContributorName.text);
    }
  }

  void tracksInputShareListener() {
    if (widget.state.tracksInputShare.text.isNotEmpty) {
      context.read<DataAlbum>().updateShare(widget.state.tracksInputShare.text);
    }
  }
}
