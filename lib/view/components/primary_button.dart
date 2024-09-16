import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:job_now/constants/colors.dart';
import 'package:sizer/sizer.dart';

class PrimaryButton extends StatelessWidget {
  final double? width;
  final String text;
  final Function()? ontap;
  const PrimaryButton({this.width, this.ontap, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1.5.h),
        width: width?.w ?? 30.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(2.w)),
        child: Text(
          text,
          style: const TextStyle(color: kWhiteColor),
        ),
      ),
    );
  }
}
