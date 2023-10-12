import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/user_member_res.dart';
import 'package:yboxv2/network/http_list.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/utils/utils_loading.dart';

class ChatUserState extends ChangeNotifier {
  bool isLoading = false;

  List<UserMemberRes> listMember = [];

  LoginRes? loginRes;

  ChatUserState() {
    init();
  }

  void init() {
    getMember();
  }

  Future<void> getMember() async {
    isLoading = true;
    notifyListeners();

    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));
    notifyListeners();

    final resStep1 = await HTTPListService().getMssgMember();

    resStep1.fold(
      (e) async {
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
        UtilsLoading.showError(message: e);
      },
      (cat) async {
        listMember = cat;
        isLoading = false;
        notifyListeners();

        UtilsLoading.dismiss();
      },
    );
  }
}
