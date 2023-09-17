import 'package:flutter/material.dart';
import 'package:yboxv2/widget/v_text.dart';

class ProfilPage extends StatefulWidget {
  static const ROUTE = 'profil_page';
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Center(child: vText("Profil")),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Column(
                children: [
                  vText(
                    "Aan Pranowo",
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                  vText(
                    "Tim Survey",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
