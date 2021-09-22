import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnTap;
  final String secondLabel;
  final VoidCallback secondOnTap;

  const SetLabelButtons({ 
    Key? key, 
    required this.primaryLabel, 
    required this.primaryOnTap, 
    required this.secondLabel, 
    required this.secondOnTap 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(child: LabelButton(label: primaryLabel, onPressed: primaryOnTap)),
          DividerVertical(),
          Expanded(child: LabelButton(label: secondLabel, onPressed: secondOnTap)),
        ],
      ),
    );
  }
}