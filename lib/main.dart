import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_now/view/auth/auth_page.dart';
import 'package:job_now/view/home-Page.dart';
import 'package:job_now/view/onbarding/onbarding-page.dart';
import 'package:job_now/view/onbarding/second_onbarding_page.dart';
import 'package:job_now/view/onbarding/third_onbarding_page.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
      return MaterialApp(
        title: 'JobNow',
        theme: ThemeData(useMaterial3: true, textTheme: GoogleFonts.averiaLibreTextTheme(), scaffoldBackgroundColor: Colors.white),
        home: const AuthPage(),
      );
    });
  }
}
