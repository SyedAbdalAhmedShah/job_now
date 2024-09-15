import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:job_now/constants/app_strings.dart';
import 'package:job_now/constants/colors.dart';
import 'package:sizer/sizer.dart';

class PrimaryButton extends StatelessWidget {
  final double? width;
  const PrimaryButton({this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log("HELLO WORLD");
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1.5.h),
        width: width ?? 30.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(2.w)),
        child: const Text(
          kNext,
          style: TextStyle(color: kWhiteColor),
        ),
      ),
    );
  }
}
