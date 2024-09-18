import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StyleHandler {
  static OutlineInputBorder get getTextFieldBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(3.w),
        borderSide: const BorderSide(
          color: Colors.transparent,
        ),
      );
}
