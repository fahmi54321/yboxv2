import 'package:flutter/material.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({Key? key}) : super(key: key);
  static const String ROUTE = '/AddTransactionPage';

  @override
  AddTransactionPageState createState() => AddTransactionPageState();
}

class AddTransactionPageState extends State<AddTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: vText(
          'Transaction',
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 8),
              buildBankName(),
              buildAccountNumber(),
              buildNameOnAccount(),
              buildLabelName(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: VButtonRectangle(
      //     'Simpan',
      //     radius: 55,
      //     width: MediaQuery.of(context).size.width,
      //     height: 46,
      //     backgroundColor: Theme.of(context).colorScheme.primary,
      //     borderColor: Theme.of(context).colorScheme.primary,
      //     colorText: Theme.of(context).colorScheme.onPrimary,
      //     onTap: () {},
      //   ),
      // ),
    );
  }

  Column buildLabelName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Label Name",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(height: 8),
        // VDropDownLabel(
        //   value: state.selectLabel,
        //   onChanged: (LabelRes? data) {
        //     setState(() {
        //       state.selectLabel = data;
        //     });
        //   },
        //   items:
        //       state.listLabel.map<DropdownMenuItem<LabelRes>>((LabelRes value) {
        //     return DropdownMenuItem<LabelRes>(
        //       value: value,
        //       child: Text(value.nama),
        //     );
        //   }).toList(),
        //   borderColor: CPPrimaryColor.withOpacity(0.1),
        //   icon: const Icon(Icons.arrow_drop_down),
        // ),
      ],
    );
  }

  Column buildNameOnAccount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        vText(
          "Name on Account",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(height: 16),
        VInputText(
          'Input here...',
          radius: 8,
          outlineColor: primaryColor.withOpacity(0.1),
          activeColor: primaryColor,
          fontSize: 12,
          fillColor: primaryColor.withOpacity(0.04),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Column buildBankName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        vText(
          "Bank Name",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(height: 8),
        // VDropDownBank(
        //   value: state.selectBank,
        //   onChanged: (BankRes? data) {
        //     setState(() {
        //       state.selectBank = data;
        //     });
        //   },
        //   items: state.listBank.map<DropdownMenuItem<BankRes>>((BankRes value) {
        //     return DropdownMenuItem<BankRes>(
        //       value: value,
        //       child: Text(value.name),
        //     );
        //   }).toList(),
        //   borderColor: CPPrimaryColor.withOpacity(0.1),
        //   icon: const Icon(Icons.arrow_drop_down),
        // ),
      ],
    );
  }

  Column buildAccountNumber() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        vText(
          "Account Number",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        const SizedBox(height: 16),
        VInputText(
          'Input here...',
          radius: 8,
          outlineColor: primaryColor.withOpacity(0.1),
          activeColor: primaryColor,
          fontSize: 12,
          keyboardType: TextInputType.number,
          fillColor: primaryColor.withOpacity(0.04),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
