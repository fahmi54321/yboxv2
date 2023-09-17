import 'package:flutter/material.dart';
import 'package:yboxv2/pages/home/fragment/audio_fragment.dart';
import 'package:yboxv2/pages/home/fragment/transaction_fragment.dart';
import 'package:yboxv2/pages/home/widget/item_informasi_lain.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class AkunFragment extends StatelessWidget {
  const AkunFragment({super.key});

  @override
  Widget build(BuildContext context) {
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
              Row(
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
                        'Vita',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: black6,
                      ),
                      vText(
                        'Song Writer',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18.0),
              vText(
                'Informasi Lain',
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: black2,
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
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          TransactionFragment.route,
                        );
                      },
                    ),
                    const Divider(color: grey8),
                    ItemInformasiLain(
                      label: 'Ubah Kata Sandi',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: vText(
                  'Versi 2.0',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: grey3,
                ),
              ),
              const SizedBox(height: 20.0),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  alignment: Alignment.center,
                  fixedSize: Size(MediaQuery.of(context).size.width, 45.0),
                  backgroundColor: Theme.of(context).colorScheme.onPrimary,
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
            ],
          ),
        ),
      ),
    );
  }
}
