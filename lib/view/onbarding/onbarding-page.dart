import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:job_now/constants/app_assets.dart';
import 'package:job_now/constants/app_strings.dart';
import 'package:job_now/constants/colors.dart';
import 'package:job_now/view/components/job_now_text.dart';
import 'package:job_now/view/components/primary_button.dart';
import 'package:job_now/view/onbarding/second_onbarding_page.dart';
import 'package:job_now/view/onbarding/third_onbarding_page.dart';
import 'package:sizer/sizer.dart';

class OnbardingPage extends StatefulWidget {
  const OnbardingPage({super.key});

  @override
  State<OnbardingPage> createState() => _OnbardingPageState();
}

class _OnbardingPageState extends State<OnbardingPage> {
  late final PageController _controller;
  int pageIndex = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: const [OnBoardingPageFirst(), SecondOnbardingPage(), ThirdOnbardingPage()],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.8.h),
        child: SizedBox(
          height: 6.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryButton(
                text: kBack,
                fontColor: kBlackColor,
                bgColor: kLightGrey,
                ontap: () {
                  if (pageIndex <= 2 && pageIndex != 0) {
                    setState(() {
                      pageIndex = pageIndex - 1;
                    });
                    _controller.animateToPage(pageIndex, duration: Durations.medium4, curve: Curves.easeIn);
                  }
                },
              ),
              PrimaryButton(
                text: kNext,
                ontap: () {
                  if (pageIndex < 2) {
                    setState(() {
                      pageIndex = pageIndex + 1;
                    });
                    _controller.animateToPage(pageIndex, duration: Durations.medium4, curve: Curves.easeIn);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnBoardingPageFirst extends StatelessWidget {
  const OnBoardingPageFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(8.h),
          const JobNowText(),
          Gap(8.h),
          const Image(
            image: AssetImage(kIntroJob1Image),
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
          const Spacer(),
        ],
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
