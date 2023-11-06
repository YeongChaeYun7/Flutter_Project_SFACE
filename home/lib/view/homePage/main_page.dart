import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/view/catchup/AllCatchupPage.dart';
import 'package:home/view/catchup/CatchupPage.dart';
import 'package:home/view/catchup/HotCatchupPage.dart';
import 'package:home/view/catchup/ShimmerAllCatchupPage.dart';
import 'package:home/view/catchup/ShimmerHotCatchupPage.dart';
import 'package:home/view/catchup/test.dart';
import 'package:home/view/homePage/homePage.dart';
import 'package:home/view/myPage/myCatchup/myCatchupPage.dart';
import 'package:home/view/myPage/myMogakco/myGroupPage.dart';
import 'package:home/view/myPage/myMogakco/myJoinGroupPage.dart';
import 'package:home/view/myPage/myPage.dart';
import 'package:home/widget/MyPage/Popup/DeletePopup2.dart';
import 'package:home/view/myPage/myTalk/myTalkPage.dart';
import 'package:home/view/talkPage/TalkPage.dart';
import 'package:home/widget/Catchup/DeletePopup.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const homePage(),
      const TalkPage(),
      CatchupPage(),
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
      body: pages[3],
    );
  }
}
