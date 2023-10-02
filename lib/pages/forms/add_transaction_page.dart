import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yboxv2/models/general/bank_res.dart';
import 'package:yboxv2/pages/forms/add_transaction_state.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_dropdown.dart';
import 'package:yboxv2/widget/v_text.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({Key? key}) : super(key: key);
  static const String route = '/AddTransactionPage';

  @override
  AddTransactionPageState createState() => AddTransactionPageState();
}

class AddTransactionPageState extends State<AddTransactionPage> {
  late AddTransactionState state;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AddTransactionState(context),
      child: Consumer(
        builder: (
          BuildContext context,
          AddTransactionState state,
          _,
        ) {
          this.state = state;
          return state.isLoadingList
              ? SizedBox(
                  height: 200,
                  width: 200.0,
                  child: Container(),
                )
              : Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        bankNameWidget(),
                        const SizedBox(height: 15),
                        jmlWidget(),
                        const SizedBox(height: 15),
                        simpanWidget(),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                );
          // return Scaffold(
          //   body: state.isLoadingList
          //       ?
          // bottomNavigationBar: Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: VButtonRectangle(
          //     (state.isLoadingButton == true) ? 'Loading...' : 'Simpan',
          //     radius: 55,
          //     width: MediaQuery.of(context).size.width,
          //     height: 46,
          //     backgroundColor: Theme.of(context).colorScheme.primary,
          //     borderColor: Theme.of(context).colorScheme.primary,
          //     colorText: Theme.of(context).colorScheme.onPrimary,
          //     onTap: (state.isLoadingButton == true)
          //         ? null
          //         : () {
          //             state.cekValidasiTransaksiForm();
          //           },
          //     trailing: (state.isLoadingButton == true)
          //         ? SizedBox(
          //             height: 15,
          //             width: 15,
          //             child: CircularProgressIndicator(
          //               color: Theme.of(context).colorScheme.onPrimary,
          //             ),
          //           )
          //         : null,
          //   ),
          // ),
          // );
        },
      ),
    );
  }

  Widget bankNameWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Bank Name",
          fontWeight: FontWeight.w400,
          color: black7,
        ),
        const SizedBox(height: 8),
        VDropDownBank(
          radius: 8.0,
          fontSize: 14.0,
          colorText: grey7,
          borderColor: grey10,
          value: state.selectBank,
          onChanged: (BankRes? data) {
            setState(() {
              state.selectBank = data;
            });
          },
          items: state.listBank.map<DropdownMenuItem<BankRes>>((BankRes value) {
            return DropdownMenuItem<BankRes>(
              value: value,
              child: Text(value.name),
            );
          }).toList(),
          icon: const Icon(Icons.arrow_drop_down),
        ),
      ],
    );
  }

  Widget jmlWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Jumlah",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: black7,
        ),
        const SizedBox(height: 8),
        VInputText(
          'Input here...',
          outlineColor: grey10,
          activeColor: grey10,
          fontSize: 14,
          hintFontSize: 14.0,
          hintTextColor: grey4,
          textColor: grey7,
          controller: state.jmlInput,
          fillColor: Theme.of(context).colorScheme.onPrimary,
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }

  Widget simpanWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            alignment: Alignment.center,
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                5.0,
              ),
            ),
            side: const BorderSide(color: primaryColor),
          ),
          child: vText(
            'Simpan',
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: white1,
          ),
        ),
      ],
    );
  }
}
