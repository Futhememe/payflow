import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnTap;
  final String secondLabel;
  final VoidCallback secondOnTap;

  final bool enablePrimary;


  const SetLabelButtons({ 
    Key? key, 
    required this.primaryLabel, 
    required this.primaryOnTap, 
    required this.secondLabel, 
    required this.secondOnTap,
    this.enablePrimary = false,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(child: LabelButton(
            label: primaryLabel, 
            onPressed: primaryOnTap,
            style: enablePrimary ? TextStyles.buttonPrimary : null,
          )),
          DividerVertical(),
          Expanded(child: LabelButton(label: secondLabel, onPressed: secondOnTap)),
        ],
      ),
    );
  }
}