import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/view/homePage/homePage.dart';
import 'package:home/view/myPage/myPage.dart';
import 'package:home/view/myPage/myTalk/myTalkPage.dart';
import 'package:home/view/talkPage/TalkPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const homePage(),
      const TalkPage(),
      const myPage(),
      MyTalkPage(),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: SvgPicture.asset(
          'assets/icon/logo/Nav_Logo.svg',
          width: 70,
        ),
      ),
      body: pages[5],
    );
  }
}
