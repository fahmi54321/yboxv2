// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yboxv2/anim/animation_akun_bank.dart';
import 'package:yboxv2/models/akun_bank/akun_bank_res.dart';
import 'package:yboxv2/models/general/bank_res.dart';
import 'package:yboxv2/pages/forms/add_akun_bank_state.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_dropdown.dart';
import 'package:yboxv2/widget/v_text.dart';

class AddAkunBankPage extends StatefulWidget {
  final DataBankRes? dataBank;
  const AddAkunBankPage({
    Key? key,
    this.dataBank,
  }) : super(key: key);

  @override
  AddAkunBankPageState createState() => AddAkunBankPageState();
}

class AddAkunBankPageState extends State<AddAkunBankPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 2000,
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AddAkunBankState(
        context: context,
        dataBank: widget.dataBank,
      ),
      child: Consumer(
        builder: (
          BuildContext context,
          AddAkunBankState state,
          _,
        ) {
          return state.isLoadingList
              ? SizedBox(
                  height: 200,
                  width: 200.0,
                  child: Container(),
                )
              : AddAkunBank(
                  state: state,
                  controller: _controller,
                );
        },
      ),
    );
  }
}

class AddAkunBank extends StatefulWidget {
  final AddAkunBankState state;
  final AnimationController controller;
  final AnimationAkunBank animation;
  AddAkunBank({
    super.key,
    required this.state,
    required this.controller,
  }) : animation = AnimationAkunBank(controller: controller);

  @override
  State<AddAkunBank> createState() => _AddAkunBankState();
}

class _AddAkunBankState extends State<AddAkunBank> {
  @override
  void initState() {
    super.initState();
    widget.controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.animation.controller,
        builder: (BuildContext context, Widget? child) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  formAkunWidget(),
                  const SizedBox(height: 25),
                  bankNameWidget(),
                  const SizedBox(height: 15),
                  accNumBankWidget(),
                  const SizedBox(height: 15),
                  nameOnBankWidget(),
                  const SizedBox(height: 15),
                  nameAccWidget(),
                  const SizedBox(height: 15),
                  simpanWidget(),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          );
        });
  }

  Widget formAkunWidget() {
    return Opacity(
      opacity: widget.animation.bankNameOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Form Akun Bank",
            fontWeight: FontWeight.w600,
            color: black7,
            fontSize: 18.0,
          ),
        ],
      ),
    );
  }

  Widget bankNameWidget() {
    return Opacity(
      opacity: widget.animation.bankNameOpacity.value,
      child: Column(
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
            value: widget.state.selectBank,
            onChanged: (BankRes? data) {
              setState(() {
                widget.state.selectBank = data;
              });
            },
            items: widget.state.listBank
                .map<DropdownMenuItem<BankRes>>((BankRes value) {
              return DropdownMenuItem<BankRes>(
                value: value,
                child: Text(value.name),
              );
            }).toList(),
            icon: const Icon(Icons.arrow_drop_down),
          ),
        ],
      ),
    );
  }

  Widget accNumBankWidget() {
    return Opacity(
      opacity: widget.animation.nomorBankOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Nomor bank",
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
            controller: widget.state.noInput,
            fillColor: Theme.of(context).colorScheme.onPrimary,
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }

  Widget nameOnBankWidget() {
    return Opacity(
      opacity: widget.animation.namaRekOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Nama Rekening Bank",
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
            controller: widget.state.nameRekBank,
            fillColor: Theme.of(context).colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }

  Widget nameAccWidget() {
    return Opacity(
      opacity: widget.animation.namaAkunOpacity.value,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          vText(
            "Nama Akun Bank",
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
            controller: widget.state.namAkunBank,
            fillColor: Theme.of(context).colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }

  Widget simpanWidget() {
    return Opacity(
      opacity: widget.animation.buttonOpacity.value,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: widget.state.isLoadingButton
                ? null
                : () {
                    widget.state.cekValidasiTransaksiForm();
                  },
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
              widget.state.dataBank != null ? 'Edit' : 'Simpan',
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: white1,
            ),
          ),
        ],
      ),
    );
  }
}
