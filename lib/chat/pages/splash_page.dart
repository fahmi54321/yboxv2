import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:yboxv2/chat/services/cloud_storage_services.dart';
import 'package:yboxv2/chat/services/database_services.dart';
import 'package:yboxv2/chat/services/media_services.dart';
import 'package:yboxv2/chat/services/navigation_services.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashPage({
    Key? key,
    required this.onInitializationComplete,
  }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1)).then((_) {
      _setup().then((_) => widget.onInitializationComplete());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: const Icon(Icons.flutter_dash),
        ),
      ),
    );
  }

  Future<void> _setup() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    _registerServices();
  }

  void _registerServices() {
    GetIt.instance.registerSingleton<NavigatorServices>(NavigatorServices());
    GetIt.instance.registerSingleton<MediaService>(MediaService());
    GetIt.instance
        .registerSingleton<CloudStorageServices>(CloudStorageServices());
    GetIt.instance.registerSingleton<DatabaseServices>(DatabaseServices());
  }
}
