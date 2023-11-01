import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:home/styles/app_colors.dart';
import 'package:home/view/HomePage.dart';
import 'package:home/view/ShimmerTalkPage.dart';
import 'package:home/view/TalkPage.dart';
import 'package:home/widget/Shimmer/ShimmerTalkBlock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.stroke_line_5,
        fontFamily: 'Pretendard',
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: SvgPicture.asset(
            'assets/icon/logo/Nav_Logo.svg',
            width: 70,
          ),
        ),
        body: const ShimmerTalkPage(),
      ),
    );
  }
}
