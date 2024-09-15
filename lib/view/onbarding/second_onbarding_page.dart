import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:job_now/constants/app_assets.dart';
import 'package:job_now/constants/app_strings.dart';
import 'package:job_now/constants/colors.dart';
import 'package:job_now/view/components/job_now_text.dart';
import 'package:sizer/sizer.dart';

class SecondOnbardingPage extends StatelessWidget {
  const SecondOnbardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(3.h),
          const JobNowText(),
          Gap(5.h),
          const Image(
            image: AssetImage(kIntroJob2Image),
          ),
          Text(
            kTrackJobText,
            textAlign: TextAlign.center,
            style: TextStyle(color: kBlackColor, fontSize: 20.sp),
          ),
          Gap(3.h),
        ],
      ),
    );
  }
}
