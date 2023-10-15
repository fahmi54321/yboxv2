// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:yboxv2/models/count/count_amount_res.dart';
import 'package:yboxv2/models/count/count_res.dart';
import 'package:yboxv2/models/grafik/grafik_res.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/models/user_res.dart';
import 'package:yboxv2/network/http_auth.dart';
import 'package:yboxv2/network/http_count.dart';
import 'package:yboxv2/network/http_grafik.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/service/firebase_notif.dart';
import 'package:yboxv2/utils/utils_loading.dart';
import 'package:yboxv2/widget/v_text.dart';

enum Kategori {
  album(value: 'Album'),
  track(value: 'Track'),
  ringtone(value: 'Ringtone'),
  video(value: 'Video');

  const Kategori({required this.value});
  final String value;
}

enum Periode {
  all(value: 'Semua'),
  janMar(value: 'Jan-Mar'),
  aprJun(value: 'Apr-Jun'),
  julSept(value: 'Jul-Sept'),
  oktDesc(value: 'Okt-Desc');

  const Periode({required this.value});
  final String value;
}

class DataGrafik {
  String name;
  List<ValueGrafik> data;

  DataGrafik({required this.name, required this.data});
}

class ValueGrafik {
  final int bln;
  final int value;
  ValueGrafik({
    required this.bln,
    required this.value,
  });
}

class HomeFragmentState extends ChangeNotifier {
  final BuildContext context;
  HomeFragmentState({
    required this.context,
  }) {
    init();
  }

  LoginRes? loginRes;
  UserRes? userRes;
  CountRes? countAlbum;
  CountRes? countVideo;
  CountRes? countRingtone;
  CountRes? countTrack;
  CountRes? countProgress;
  CountAmountRes? countAmount;

  // grafik
  List<DataSeries> listDataGrafik = [];
  DataGrafik dataGrafikAlbum = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikAlbumJanMar = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikAlbumAprJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikAlbumJulSept = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikAlbumOktDesc = DataGrafik(name: '', data: []);

  DataGrafik dataGrafikTrack = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikTrackJanMar = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikTrackAprJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikTrackJulSept = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikTrackOktDesc = DataGrafik(name: '', data: []);

  DataGrafik dataGrafikRingtone = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikRingtoneJanMar = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikRingtoneAprJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikRingtoneJulSept = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikRingtoneOktDesc = DataGrafik(name: '', data: []);

  DataGrafik dataGrafikVideo = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikVideoJanMar = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikVideoAprJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikVideoJulSept = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikVideoOktDesc = DataGrafik(name: '', data: []);

  DataGrafik dataGrafik = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikJanMar = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikAprJun = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikJulSept = DataGrafik(name: '', data: []);
  DataGrafik dataGrafikOktDesc = DataGrafik(name: '', data: []);

  //filter grafik
  Periode selectPeriode = Periode.all;
  Kategori selectKategori = Kategori.album;
  // List<String> kategoriList = ["Album", "Track", "Ringtone", "Video"];
  // List<String> periodeList = ["Jan-Mar", "Apr-Jun", "Jul-Sept", "Okt-Desc"];
  // String selectKategori = 'Album';
  // String selectPeriode = 'Jan-Mar';

  // filter grafik

  bool isLoading = false;

  void init() async {
    isLoading = true;
    notifyListeners();

    await Notif(context: context).initNotif();
    await getUser();
    await getAlbum();
    await getVideo();
    await getRingtone();
    await getTrack();
    await getAmount();
    await getProgress();
    await getGrafik();
    await updateTokenFirebase();

    isLoading = false;
    notifyListeners();
  }

  Future<void> updateTokenFirebase() async {
    try {
      String? tokenFirebase = await FirebaseMessaging.instance.getToken();
      debugPrint("tokenFirebase $tokenFirebase");

      final resStep1 = await HTTPAuthService().updateTokenFirebase(
        tokenFirebase: tokenFirebase ?? '',
      );

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {},
      );
    } catch (e) {
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getUser() async {
    try {
      final resStep1 = await HTTPAuthService().getUser();

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          userRes = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getAlbum() async {
    try {
      final resStep1 = await HTTPCountService().countAlbum();

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countAlbum = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getVideo() async {
    try {
      final resStep1 = await HTTPCountService().countVideo();

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countVideo = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getRingtone() async {
    try {
      final resStep1 = await HTTPCountService().countRingtone();

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countRingtone = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getTrack() async {
    try {
      final resStep1 = await HTTPCountService().countTrack();

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countTrack = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getProgress() async {
    try {
      final resStep1 = await HTTPCountService().countProgress();

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countProgress = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getAmount() async {
    try {
      final resStep1 = await HTTPCountService().countAmount();

      resStep1.fold(
        (e) async {
          UtilsLoading.showError(message: e);

          isLoading = false;
          notifyListeners();
        },
        (cat) async {
          countAmount = cat;
          notifyListeners();
        },
      );
    } catch (e) {
      UtilsLoading.showError(message: '$e');

      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getGrafik() async {
    final resStep1 = await HTTPGrafikService().getGrafik();

    notifyListeners();
    resStep1.fold(
      (e) async {
        UtilsLoading.showError(message: e);

        isLoading = false;
        notifyListeners();
      },
      (cat) async {
        listDataGrafik = cat;

        for (var data in cat) {
          if (data.name.toLowerCase() == 'album') {
            dataGrafikAlbum.name = data.name;
            for (var i = 0; i < data.data.length; i++) {
              dataGrafikAlbum.data
                  .add(ValueGrafik(bln: i + 1, value: data.data[i]));
            }
          } else if (data.name.toLowerCase() == 'track') {
            dataGrafikTrack.name = data.name;
            for (var i = 0; i < data.data.length; i++) {
              dataGrafikTrack.data
                  .add(ValueGrafik(bln: i + 1, value: data.data[i]));
            }
          } else if (data.name.toLowerCase() == 'ringtone') {
            dataGrafikRingtone.name = data.name;
            for (var i = 0; i < data.data.length; i++) {
              dataGrafikRingtone.data
                  .add(ValueGrafik(bln: i + 1, value: data.data[i]));
            }
          } else if (data.name.toLowerCase() == 'video') {
            dataGrafikVideo.name = data.name;
            for (var i = 0; i < data.data.length; i++) {
              dataGrafikVideo.data
                  .add(ValueGrafik(bln: i + 1, value: data.data[i]));
            }
          }
        }

        notifyListeners();

        await initDataPerPeriode();
        await initAwalDataGrafik();
      },
    );
  }

  Future<void> initDataPerPeriode() async {
    //album
    if (dataGrafikAlbum.data.isNotEmpty) {
      dataGrafikAlbumJanMar.name = 'Album';
      dataGrafikAlbumAprJun.name = 'Album';
      dataGrafikAlbumJulSept.name = 'Album';
      dataGrafikAlbumOktDesc.name = 'Album';
      for (int i = 0; i < 3; i++) {
        dataGrafikAlbumJanMar.data.add(dataGrafikAlbum.data[i]);
      }
      for (int i = 3; i < 6; i++) {
        dataGrafikAlbumAprJun.data.add(dataGrafikAlbum.data[i]);
      }
      for (int i = 6; i < 9; i++) {
        dataGrafikAlbumJulSept.data.add(dataGrafikAlbum.data[i]);
      }
      for (int i = 9; i < 12; i++) {
        dataGrafikAlbumOktDesc.data.add(dataGrafikAlbum.data[i]);
      }
    }

    //track
    if (dataGrafikTrack.data.isNotEmpty) {
      dataGrafikTrackJanMar.name = 'Track';
      dataGrafikTrackAprJun.name = 'Track';
      dataGrafikTrackJulSept.name = 'Track';
      dataGrafikTrackOktDesc.name = 'Track';
      for (int i = 0; i < 3; i++) {
        dataGrafikTrackJanMar.data.add(dataGrafikTrack.data[i]);
      }
      for (int i = 3; i < 6; i++) {
        dataGrafikTrackAprJun.data.add(dataGrafikTrack.data[i]);
      }
      for (int i = 6; i < 9; i++) {
        dataGrafikTrackJulSept.data.add(dataGrafikTrack.data[i]);
      }
      for (int i = 9; i < 12; i++) {
        dataGrafikTrackOktDesc.data.add(dataGrafikTrack.data[i]);
      }
    }

    //ringtone
    if (dataGrafikRingtone.data.isNotEmpty) {
      dataGrafikRingtoneJanMar.name = 'Ringtone';
      dataGrafikRingtoneAprJun.name = 'Ringtone';
      dataGrafikRingtoneJulSept.name = 'Ringtone';
      dataGrafikRingtoneOktDesc.name = 'Ringtone';
      for (int i = 0; i < 3; i++) {
        dataGrafikRingtoneJanMar.data.add(dataGrafikRingtone.data[i]);
      }
      for (int i = 3; i < 6; i++) {
        dataGrafikRingtoneAprJun.data.add(dataGrafikRingtone.data[i]);
      }
      for (int i = 6; i < 9; i++) {
        dataGrafikRingtoneJulSept.data.add(dataGrafikRingtone.data[i]);
      }
      for (int i = 9; i < 12; i++) {
        dataGrafikRingtoneOktDesc.data.add(dataGrafikRingtone.data[i]);
      }
    }

    //video
    if (dataGrafikVideo.data.isNotEmpty) {
      dataGrafikVideoJanMar.name = 'Video';
      dataGrafikVideoAprJun.name = 'Video';
      dataGrafikVideoJulSept.name = 'Video';
      dataGrafikVideoOktDesc.name = 'Video';
      for (int i = 0; i < 3; i++) {
        dataGrafikVideoJanMar.data.add(dataGrafikVideo.data[i]);
      }
      for (int i = 3; i < 6; i++) {
        dataGrafikVideoAprJun.data.add(dataGrafikVideo.data[i]);
      }
      for (int i = 6; i < 9; i++) {
        dataGrafikVideoJulSept.data.add(dataGrafikVideo.data[i]);
      }
      for (int i = 9; i < 12; i++) {
        dataGrafikVideoOktDesc.data.add(dataGrafikVideo.data[i]);
      }
    }

    notifyListeners();
  }

  Future<void> initAwalDataGrafik() async {
    dataGrafik = dataGrafikAlbum;
    notifyListeners();
  }

  Future<void> filterGrafik({
    required Periode dataPeriode,
    required Kategori dataKategori,
  }) async {
    switch (dataPeriode) {
      case Periode.janMar:
        {
          if (dataKategori == Kategori.album) {
            dataGrafik = dataGrafikAlbumJanMar;
            notifyListeners();
          } else if (dataKategori == Kategori.ringtone) {
            dataGrafik = dataGrafikRingtoneJanMar;
            notifyListeners();
          } else if (dataKategori == Kategori.track) {
            dataGrafik = dataGrafikTrackJanMar;
            notifyListeners();
          } else if (dataKategori == Kategori.video) {
            dataGrafik = dataGrafikVideoJanMar;
            notifyListeners();
          } else {
            dataGrafik = dataGrafikAlbumJanMar;
            notifyListeners();
          }
        }

        break;

      case Periode.aprJun:
        {
          if (dataKategori == Kategori.album) {
            dataGrafik = dataGrafikAlbumAprJun;
            notifyListeners();
          } else if (dataKategori == Kategori.ringtone) {
            dataGrafik = dataGrafikRingtoneAprJun;
            notifyListeners();
          } else if (dataKategori == Kategori.track) {
            dataGrafik = dataGrafikTrackAprJun;
            notifyListeners();
          } else if (dataKategori == Kategori.video) {
            dataGrafik = dataGrafikVideoAprJun;
            notifyListeners();
          } else {
            dataGrafik = dataGrafikAlbumAprJun;
            notifyListeners();
          }
        }

        break;
      case Periode.julSept:
        {
          if (dataKategori == Kategori.album) {
            dataGrafik = dataGrafikAlbumJulSept;
            notifyListeners();
          } else if (dataKategori == Kategori.ringtone) {
            dataGrafik = dataGrafikRingtoneJulSept;
            notifyListeners();
          } else if (dataKategori == Kategori.track) {
            dataGrafik = dataGrafikTrackJulSept;
            notifyListeners();
          } else if (dataKategori == Kategori.video) {
            dataGrafik = dataGrafikVideoJulSept;
            notifyListeners();
          } else {
            dataGrafik = dataGrafikAlbumJulSept;
            notifyListeners();
          }
        }
        break;
      case Periode.oktDesc:
        {
          if (dataKategori == Kategori.album) {
            dataGrafik = dataGrafikAlbumOktDesc;
            notifyListeners();
          } else if (dataKategori == Kategori.ringtone) {
            dataGrafik = dataGrafikRingtoneOktDesc;
            notifyListeners();
          } else if (dataKategori == Kategori.track) {
            dataGrafik = dataGrafikTrackOktDesc;
            notifyListeners();
          } else if (dataKategori == Kategori.video) {
            dataGrafik = dataGrafikVideoOktDesc;
            notifyListeners();
          } else {
            dataGrafik = dataGrafikAlbumOktDesc;
            notifyListeners();
          }
        }
        break;
      case Periode.all:
        {
          if (dataKategori == Kategori.album) {
            dataGrafik = dataGrafikAlbum;
            notifyListeners();
          } else if (dataKategori == Kategori.ringtone) {
            dataGrafik = dataGrafikRingtone;
            notifyListeners();
          } else if (dataKategori == Kategori.track) {
            dataGrafik = dataGrafikTrack;
            notifyListeners();
          } else if (dataKategori == Kategori.video) {
            dataGrafik = dataGrafikVideo;
            notifyListeners();
          } else {
            dataGrafik = dataGrafikAlbum;
            notifyListeners();
          }
        }
        break;
      default:
    }
  }

  List<PopupMenuEntry<Kategori>> listFilterKategori() => [
        popMenuKategori(
          value: Kategori.album,
          icon: 'assets/icon/ic_album.png',
          label: 'Album',
        ),
        popMenuKategori(
          value: Kategori.video,
          icon: 'assets/icon/ic_video.png',
          label: 'Video',
        ),
        popMenuKategori(
          value: Kategori.ringtone,
          icon: 'assets/icon/ic_ringtone.png',
          label: 'Ringtone',
        ),
        popMenuKategori(
          value: Kategori.track,
          icon: 'assets/icon/ic_music.png',
          label: 'Track',
        ),
      ];

  List<PopupMenuEntry<Periode>> listFilterPeriode() => [
        popMenuPeriode(
          value: Periode.all,
          label: 'Semua',
        ),
        popMenuPeriode(
          value: Periode.janMar,
          label: 'Jan-Mar',
        ),
        popMenuPeriode(
          value: Periode.aprJun,
          label: 'Apr-Jun',
        ),
        popMenuPeriode(
          value: Periode.julSept,
          label: 'Jul-Sept',
        ),
        popMenuPeriode(
          value: Periode.oktDesc,
          label: 'Okt-Desc',
        ),
      ];

  PopupMenuItem<Kategori> popMenuKategori({
    required Kategori value,
    required String icon,
    required String label,
  }) =>
      PopupMenuItem(
        value: value,
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 16.0,
              height: 16.0,
            ),
            const SizedBox(
              width: 6,
            ),
            vText(
              label,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: grey5,
            ),
          ],
        ),
      );

  PopupMenuItem<Periode> popMenuPeriode({
    required Periode value,
    required String label,
  }) =>
      PopupMenuItem(
        value: value,
        child: vText(
          label,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: grey5,
        ),
      );
}
