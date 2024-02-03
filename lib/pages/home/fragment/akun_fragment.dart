import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/anim/animation_akun.dart';
import 'package:yboxv2/models/login_res.dart';
import 'package:yboxv2/pages/home/fragment/akun_bank_fragment.dart';
import 'package:yboxv2/pages/home/fragment/akun_fragment_state.dart';
import 'package:yboxv2/pages/home/fragment/audio_fragment.dart';
import 'package:yboxv2/pages/home/fragment/transaction_fragment.dart';
import 'package:yboxv2/pages/home/widget/item_informasi_lain.dart';
import 'package:yboxv2/pages/widget/ubah_password_page.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/utils/shared_pref.dart';
import 'package:yboxv2/widget/v_dialog.dart';
import 'package:yboxv2/widget/v_text.dart';

class AkunFragment extends StatefulWidget {
  const AkunFragment({super.key});

  @override
  State<AkunFragment> createState() => _AkunFragmentState();
}

class _AkunFragmentState extends State<AkunFragment>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late LoginRes loginRes;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    init();
  }

  void init() async {
    setState(() {
      isLoading = true;
    });

    var dataToken = await SharedPreferencesUtils.getLoginPreference();
    loginRes = LoginRes.fromJson(jsonDecode(dataToken ?? ''));

    setState(() {
      isLoading = false;
    });

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1400,
        ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AkunFragmentState(
        context: context,
      ),
      child:
          Consumer(builder: (BuildContext context, AkunFragmentState state, _) {
        return isLoading
            ? Container()
            : AkunWidget(
                controller: _controller,
                state: state,
                loginRes: loginRes,
              );
      }),
    );
  }
}

class AkunWidget extends StatelessWidget {
  final AnimationController controller;
  final AnimationAkun animation;
  final AkunFragmentState state;
  final LoginRes loginRes;
  AkunWidget({
    super.key,
    required this.controller,
    required this.state,
    required this.loginRes,
  }) : animation = AnimationAkun(controller: controller);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation.controller,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: vText(
              'Profil',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 23.0,
              horizontal: 16.0,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: animation.profileOpacity.value,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            color: primaryColor2,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            width: 57.0,
                            height: 57.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: Image.asset(
                                  'assets/image/the_band_party.png',
                                ).image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 18.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            vText(
                              loginRes.namaLengkap.toUpperCase(),
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: black6,
                              maxLines: 1,
                            ),
                            vText(
                              loginRes.level == 3 ? 'Anggota' : 'Leader',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: primaryColor,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  Opacity(
                    opacity: animation.informasiLainOpacity.value,
                    child: vText(
                      'Informasi Lain',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: black2,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 8.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: grey8),
                    ),
                    child: Column(
                      children: [
                        ItemInformasiLain(
                          label: 'Ringtone',
                          opacity: animation.ringtoneOpacity.value,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AudioFragment.route,
                            );
                          },
                        ),
                        const Divider(color: grey8),
                        ItemInformasiLain(
                          label: 'Transaksi',
                          opacity: animation.transaksiOpacity.value,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              TransactionFragment.route,
                            );
                          },
                        ),
                        const Divider(color: grey8),
                        ItemInformasiLain(
                          label: 'Bank',
                          opacity: animation.bankOpacity.value,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AkunBankFragment.route,
                            );
                          },
                        ),
                        const Divider(color: grey8),
                        ItemInformasiLain(
                          label: 'Ubah Kata Sandi',
                          opacity: animation.ubahKataSandiOpacity.value,
                          onTap: () {
                            showDialog1(
                              context: context,
                              widget: UbahPasswordPage(),
                            ).then(
                              (value) {
                                if (value is bool) {
                                  if (value) {
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                      (timeStamp) {},
                                    );
                                  }
                                }
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Center(
                    child: Opacity(
                      opacity: animation.versiOpacity.value,
                      child: vText(
                        'Versi 2.0',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: grey3,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Opacity(
                    opacity: animation.keluarOpacity.value,
                    child: OutlinedButton(
                      onPressed: state.isLoadingLogout
                          ? null
                          : () {
                              state.cekKoneksi();
                            },
                      style: OutlinedButton.styleFrom(
                        alignment: Alignment.center,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width, 45.0),
                        backgroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            5.0,
                          ),
                        ),
                        side: const BorderSide(color: red1),
                      ),
                      child: vText(
                        'Keluar',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: red1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
