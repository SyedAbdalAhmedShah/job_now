import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:job_now/components/app_text_field.dart';
import 'package:job_now/components/job_now_text.dart';
import 'package:job_now/constants/app_strings.dart';
import 'package:sizer/sizer.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const JobNowText(), Gap(8.h), const SignInView()],
        ),
      ),
    );
  }
}

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool obstructText = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.0.w),
      child: Column(
        children: [
          const AppTextField(
            hint: kEmail,
          ),
          Gap(2.h),
          AppTextField(
            hint: kPassword,
            isPassword: true,
            obstructText: obstructText,
            onTap: () {
              setState(() {
                obstructText = !obstructText;
              });
            },
          )
        ],
      ),
    );
  }
}
