import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/chat/providers/auth_provider.dart';
import 'package:yboxv2/chat/services/database_services.dart';
import 'package:yboxv2/chat/services/navigation_services.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/network/http_auth.dart';
import 'package:yboxv2/pages/home/home_page.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/utils/utils_validation.dart';

class LoginState extends ChangeNotifier {
  final BuildContext context;

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passController = TextEditingController(text: '');

  bool isLoading = false;

  // firebase
  late AuthenticationProvider auth;
  late FirebaseAuth firebaseAuth;
  late DatabaseServices db;
  late NavigatorServices navigation;

  LoginState(this.context) {
    init();
  }

  void init() {
    firebaseAuth = FirebaseAuth.instance;
    auth = Provider.of<AuthenticationProvider>(context);
    db = GetIt.instance.get<DatabaseServices>();
    navigation = GetIt.instance.get<NavigatorServices>();
  }

  void login() async {
    if (emailController.text.isEmpty) {
      UtilsLoading.showInfo(message: 'Email tidak boleh kosong');
    } else if (!emailController.text.isValidEmail()) {
      UtilsLoading.showInfo(message: 'Email tidak valid');
    } else if (passController.text.isEmpty) {
      UtilsLoading.showInfo(message: 'Password tidak boleh kosong');
    } else if (passController.text.length < 8) {
      UtilsLoading.showInfo(message: 'Password belum valid');
    } else {
      isLoading = true;
      notifyListeners();

      UtilsLoading.showLoading();

      Map<String, String> data = {
        'username': emailController.text.toString(),
        'password': passController.text.toString(),
      };
      try {
        final resStep1 = await HTTPAuthService().login(data: data);

        resStep1.fold(
          (e) async {
            UtilsLoading.dismiss();
            UtilsLoading.showError(message: e);

            isLoading = false;
            notifyListeners();
          },
          (cat) async {
            final loginFirebase = await loginUsingEmailAndPassword(
              emailController.text.toString(),
              passController.text.toString(),
            );

            if (loginFirebase) {
              if (cat.level == 3 || cat.level == 2) {
                if (cat.uuidMsg == null) {
                  final uuid = await registerFirebase(
                    email: emailController.text,
                    nama: cat.namaLengkap,
                    password: passController.text,
                    idLeader: cat.id,
                    isAnggota: cat.level == 3 ? true : false,
                    token: cat.accessToken,
                  );
                  if (uuid != null) {
                    await goToHome(data: cat);
                  } else {
                    UtilsLoading.dismiss();
                    UtilsLoading.showError(message: 'Terjadi kesalahan');

                    isLoading = false;
                    notifyListeners();
                  }
                } else {
                  await goToHome(data: cat);
                }
              } else {
                UtilsLoading.dismiss();
                UtilsLoading.showInfo(
                  message: 'Hanya bisa akses Leader dan Member',
                );

                isLoading = false;
                notifyListeners();
              }
            } else {
              UtilsLoading.dismiss();
              UtilsLoading.showInfo(
                message: 'Terjadi kesalahan',
              );

              isLoading = false;
              notifyListeners();
            }
          },
        );
      } catch (e) {
        UtilsLoading.dismiss();
        UtilsLoading.showError(message: '$e');

        isLoading = false;
        notifyListeners();
      }
    }
  }

  Future<void> goToHome({
    required LoginRes data,
  }) async {
    await SharedPreferencesUtils.saveLoginPreference(data);

    isLoading = false;
    notifyListeners();

    UtilsLoading.dismiss();
    UtilsLoading.showSuccess(message: 'Berhasil masuk');

    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          HomePage.route,
          arguments: ArgsHomePage(loginRes: data),
          (route) => false,
        );
      },
    );
  }

  Future<String?> registerFirebase({
    required String email,
    required String nama,
    required String password,
    required String idLeader,
    required bool isAnggota,
    required String token,
  }) async {
    String? uid = await auth.registerUserUsingEmailAndPassword(
      email,
      password,
    );

    final isSuksesSave = await db.createUser(
      uid ?? '',
      email,
      nama,
      idLeader,
      isAnggota ? '1' : '0',
    );

    debugPrint('isSuksesSave : $isSuksesSave');

    if (isSuksesSave != null) {
      if (isSuksesSave) {
        debugPrint('updateUuid isSuksesSave : $uid');
        final isDone = await updateUuid(
          uuid: uid ?? '',
          token: token,
        );
        if (isDone) {
          return uid;
        } else {
          return null;
        }
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  Future<bool> updateUuid({
    required String uuid,
    required String token,
  }) async {
    debugPrint('masukk params updateUuid : $uuid');
    debugPrint('masukk updateUuid');
    try {
      bool isDone = false;
      final resStep1 = await HTTPAuthService().updateUuid(
        uuid: uuid,
        token: token,
      );

      resStep1.fold(
        (e) async {
          UtilsLoading.dismiss();
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();

          isDone = false;
          debugPrint(e);
          debugPrint('gagal updateUuid');
        },
        (cat) async {
          isDone = true;
          debugPrint('selesai updateUuid');
        },
      );

      debugPrint('hasil1 updateUuid : $isDone');

      return isDone;
    } catch (e) {
      UtilsLoading.dismiss();
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();

      debugPrint('hasil2 updateUuid : $e');

      return false;
    }
  }

  Future<bool> loginUsingEmailAndPassword(String email, String password) async {
    try {
      final user = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      debugPrint('${firebaseAuth.currentUser}');

      if (user.user != null) {
        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException {
      debugPrint('error logging user into firebase');
      return false;
    } catch (e) {
      debugPrint('$e');
      return false;
    }
  }
}
