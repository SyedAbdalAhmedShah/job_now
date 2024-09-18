import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:job_now/components/style_handler.dart';
import 'package:job_now/constants/colors.dart';
import 'package:sizer/sizer.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final bool obstructText;
  final bool isPassword;
  final Function()? onTap;

  const AppTextField({required this.hint, this.onTap, this.isPassword = false, this.obstructText = false, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obstructText,
      decoration: InputDecoration(
          label: Text(hint),
          border: InputBorder.none,
          enabled: true,
          filled: true,
          fillColor: kTextFieldClr,
          enabledBorder: StyleHandler.getTextFieldBorder,
          focusedBorder: StyleHandler.getTextFieldBorder,
          disabledBorder: StyleHandler.getTextFieldBorder,
          suffixIcon: Visibility(
            visible: isPassword,
            replacement: const SizedBox.shrink(),
            child: InkWell(borderRadius: BorderRadius.circular(3.w), onTap: onTap, child: Icon(obstructText ? Icons.visibility_off : Icons.visibility)),
          )),
    );
  }
}
