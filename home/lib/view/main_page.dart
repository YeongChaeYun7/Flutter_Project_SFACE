import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/view/catchup/CatchupPage.dart';
import 'package:home/view/homePage/homePage.dart';
import 'package:home/view/talk/TalkPage.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const homePage(),
      const TalkPage(),
      const CatchupPage(),
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
        bottomNavigationBar: MyBottomNavigationBar(),
        body: pages[1]);
  }
}
