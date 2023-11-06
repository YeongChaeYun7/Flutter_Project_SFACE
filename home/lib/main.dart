import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/view/homePage/homePage.dart';
import 'package:home/view/mogakkoPage/MakeGroupMogakkoPage.dart';
import 'package:home/widget/Mogakco/GroupPostCard.dart';
import 'package:home/widget/Mogakco/GroupPostOptionCard.dart';
import 'package:home/widget/Mogakco/RecruitNumPopup.dart';
import 'package:home/widget/Mogakco/RecruitStatusPopup.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: AppColors.stroke_line_5,
//         fontFamily: 'Pretendard',
//       ),
//       home: homePage(),
//     );
//   }
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MakeGroupPage(),
      ),
    );
  }
}
