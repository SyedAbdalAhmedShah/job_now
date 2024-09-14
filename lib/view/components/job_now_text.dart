import 'package:flutter/material.dart';
import 'package:job_now/constants/app_strings.dart';
import 'package:job_now/constants/colors.dart';
import 'package:sizer/sizer.dart';

class JobNowText extends StatelessWidget {
  const JobNowText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(text: kJob, style: TextStyle(color: kBlackColor, fontSize: 26.sp, fontWeight: FontWeight.bold), children: const [TextSpan(text: know, style: TextStyle(color: kPurpleColor))]));
  }
}
