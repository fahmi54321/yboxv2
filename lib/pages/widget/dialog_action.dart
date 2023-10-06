import 'package:flutter/material.dart';
import 'package:yboxv2/anim/animation_dialog_action_bank.dart';
import 'package:yboxv2/resource/CPColors.dart';
import 'package:yboxv2/widget/v_text.dart';

class DialogAction extends StatefulWidget {
  final bool isHapus;
  final String action;
  const DialogAction({
    super.key,
    this.isHapus = false,
    this.action = '',
  });

  @override
  State<DialogAction> createState() => _DialogActionState();
}

class _DialogActionState extends State<DialogAction>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationDialogActionBank animation;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 800,
        ));
    animation = AnimationDialogActionBank(controller: _controller);

    setState(() {
      isLoading = false;
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String action = widget.action.isNotEmpty
        ? widget.action
        : widget.isHapus
            ? 'Hapus'
            : 'Edit';
    return isLoading
        ? Container()
        : AnimatedBuilder(
            animation: animation.controller,
            builder: (BuildContext context, Widget? child) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
                      opacity: animation.titleOpacity.value,
                      child: vText(
                        'Yakin untuk $action data ini',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: animation.tidakOpacity.value,
                          child: SizedBox(
                            height: 30.0,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.close,
                                    color: red1,
                                    size: 15.0,
                                  ),
                                  const SizedBox(width: 4.0),
                                  vText(
                                    'Tidak',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: red1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Opacity(
                          opacity: animation.yaOpacity.value,
                          child: SizedBox(
                            height: 30.0,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: primaryColor.withOpacity(0.10),
                                surfaceTintColor:
                                    primaryColor.withOpacity(0.10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: const EdgeInsets.all(0.0),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.check_circle,
                                    color: primaryColor,
                                    size: 15.0,
                                  ),
                                  const SizedBox(width: 4.0),
                                  vText(
                                    'Ya',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w400,
                                    color: primaryColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
  }
}
