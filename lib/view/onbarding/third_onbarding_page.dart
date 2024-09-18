import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:job_now/constants/app_assets.dart';
import 'package:job_now/constants/app_strings.dart';
import 'package:job_now/constants/colors.dart';
import 'package:job_now/components/job_now_text.dart';
import 'package:job_now/components/primary_button.dart';
import 'package:sizer/sizer.dart';

class ThirdOnbardingPage extends StatelessWidget {
  const ThirdOnbardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(8.h),
        const JobNowText(),
        Gap(8.h),
        const Image(
          image: AssetImage(kIntroJob3Image),
        ),
        Text(
          kStartApp,
          textAlign: TextAlign.center,
          style: TextStyle(color: kBlackColor, fontSize: 20.sp),
        ),
        Gap(3.h),
        const PrimaryButton(
          text: kLinkedIn,
          width: 50,
        )
      ],
    );
  }
}
