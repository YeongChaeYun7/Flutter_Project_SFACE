import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/view/LoginPage/SignupComplPage.dart';
import 'package:home/view/LoginPage/loginPage.dart';
import 'package:home/view/LoginPage/splashPage.dart';
import 'package:home/view/homePage/main_page.dart';
import 'package:home/view/talkPage/TalkPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => SplashPage(),
          '/login' : (context) => const LoginPage(),
          '/home' : (context) => const MainPage(),
          '/talk' : (context) => const TalkPage(),
          '/SignUpComplete' : (context) => SignUPCompletePage(),
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Pretendard',
        ),
        // home: UpdatePage(),
        // home: Scaffold(
        //     body: SplashPage())
      ),
    );
  }
}
