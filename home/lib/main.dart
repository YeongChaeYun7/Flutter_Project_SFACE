import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/view/homePage/homePage.dart';

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
      home: MainPage(),
    );
  }
}