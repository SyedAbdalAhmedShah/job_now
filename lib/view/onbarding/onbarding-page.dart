import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:job_now/constants/app_assets.dart';
import 'package:job_now/constants/app_strings.dart';
import 'package:job_now/constants/colors.dart';
import 'package:job_now/view/components/job_now_text.dart';
import 'package:job_now/view/components/primary_button.dart';
import 'package:sizer/sizer.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const JobNowText(),
              const Image(
                image: AssetImage("assets/images/job1.png"),
              ),
              Text(
                kFindJob,
                textAlign: TextAlign.center,
                style: TextStyle(color: kBlackColor, fontSize: 20.sp),
              ),
              Gap(3.h),
              const Companies1(),
              Gap(1.h),
              const Companies2(),
              const PrimaryButton()
            ],
          ),
        ),
      ),
    );
  }
}

class Companies2 extends StatelessWidget {
  const Companies2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: const AssetImage(kglassdorImage),
          width: 20.w,
        ),
        Gap(5.w),
        Image(
          image: const AssetImage(kAngelListImage),
          width: 20.w,
        ),
      ],
    );
  }
}

class Companies1 extends StatelessWidget {
  const Companies1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: const AssetImage(kindeedImage),
          width: 20.w,
        ),
        Gap(5.w),
        Image(
          image: const AssetImage(kMonsterImage),
          width: 20.w,
        ),
        Gap(5.w),
        Image(
          image: const AssetImage(kLinkedinImage),
          width: 20.w,
        ),
      ],
    );
  }
}
