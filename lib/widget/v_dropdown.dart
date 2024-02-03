import 'package:yboxv2/models/akun_bank/akun_bank_res.dart';
import 'package:yboxv2/models/general/bank_res.dart';
import 'package:yboxv2/models/general/genre_res.dart';
import 'package:yboxv2/models/general/language_res.dart';
import 'package:yboxv2/models/general/publisher_res.dart';
import 'package:yboxv2/models/general/publishing_res.dart';
import 'package:yboxv2/models/general/roles_res.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yboxv2/models/leader/leader_res.dart';

class VDropDownLanguage extends StatelessWidget {
  final LanguageRes? value;
  final ValueChanged<LanguageRes?>? onChanged;
  final List<DropdownMenuItem<LanguageRes>> items;
  final double fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;
  final Widget icon;

  const VDropDownLanguage({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth, color: borderColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<LanguageRes>(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownGenre extends StatelessWidget {
  final GenreRes? value;
  final ValueChanged<GenreRes?>? onChanged;
  final List<DropdownMenuItem<GenreRes>> items;
  final double fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;
  final Widget icon;

  const VDropDownGenre({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth, color: borderColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<GenreRes>(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownRole extends StatelessWidget {
  final RolesRes? value;
  final ValueChanged<RolesRes?>? onChanged;
  final List<DropdownMenuItem<RolesRes>> items;
  final double fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;
  final Widget icon;

  const VDropDownRole({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth, color: borderColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<RolesRes>(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownPublishing extends StatelessWidget {
  final PublishingRes? value;
  final ValueChanged<PublishingRes?>? onChanged;
  final List<DropdownMenuItem<PublishingRes>> items;
  final double fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;
  final Widget icon;

  const VDropDownPublishing({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth, color: borderColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<PublishingRes>(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownLabel extends StatelessWidget {
  final LeaderRes? value;
  final ValueChanged<LeaderRes?>? onChanged;
  final List<DropdownMenuItem<LeaderRes>> items;
  final double fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;
  final Widget icon;

  const VDropDownLabel({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth, color: borderColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<LeaderRes>(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownBank extends StatelessWidget {
  final BankRes? value;
  final ValueChanged<BankRes?>? onChanged;
  final List<DropdownMenuItem<BankRes>> items;
  final double fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;
  final Widget icon;

  const VDropDownBank({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth, color: borderColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<BankRes>(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownBankAkun extends StatelessWidget {
  final DataBankRes? value;
  final ValueChanged<DataBankRes?>? onChanged;
  final List<DropdownMenuItem<DataBankRes>> items;
  final double fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;
  final Widget icon;

  const VDropDownBankAkun({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth, color: borderColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<DataBankRes>(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}

class VDropDownPublisher extends StatelessWidget {
  final PublisherRes? value;
  final ValueChanged<PublisherRes?>? onChanged;
  final List<DropdownMenuItem<PublisherRes>> items;
  final double fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final double paddingHorizontal;
  final double paddingVertical;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color bgColor;
  final Widget icon;

  const VDropDownPublisher({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.items,
    this.fontSize = 12,
    this.colorText = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.paddingHorizontal = 15,
    this.paddingVertical = 0,
    this.radius = 0,
    this.borderWidth = 1,
    this.bgColor = Colors.white,
    required this.icon,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal,
        vertical: paddingVertical,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth, color: borderColor)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<PublisherRes>(
          isExpanded: true,
          value: value,
          icon: const Icon(Icons.arrow_drop_down),
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ),
    );
  }
}
