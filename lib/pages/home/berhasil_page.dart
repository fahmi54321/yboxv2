import 'package:flutter/material.dart';

class ArgsBerhasilPage {
  String? message;

  ArgsBerhasilPage({this.message});
}

class BerhasilPage extends StatelessWidget {
  static const ROUTE = 'berhasil_page';

  BerhasilPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(),
    );
  }
}
