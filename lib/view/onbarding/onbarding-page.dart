import 'package:flutter/material.dart';
import 'package:job_now/constants/app_strings.dart';
import 'package:job_now/constants/colors.dart';
import 'package:job_now/view/components/job_now_text.dart';
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
