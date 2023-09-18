import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String barTitle;
  final Widget? primaryAction;
  final Widget? secondaryAction;
  final double? fontSize;

  late double _deviceHeight;
  late double _deviceWidth;

  TopBar(
    this.barTitle, {
    Key? key,
    this.primaryAction,
    this.secondaryAction,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: _deviceHeight * 0.10,
      width: _deviceWidth,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (secondaryAction != null) secondaryAction ?? Container(),
          _titleBar(),
          if (primaryAction != null) primaryAction ?? Container(),
        ],
      ),
    );
  }

  Widget _titleBar() {
    return Text(
      barTitle,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
