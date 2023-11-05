import 'package:flutter/material.dart';

import 'package:home/widget/BottomNavBar/BottomNavBar.dart';
import 'package:home/widget/Catchup/CatchupCard.dart';
import 'package:home/widget/MyPage/MainCard.dart';
import 'package:home/widget/MyPage/MyCatchupCard.dart';
import 'package:home/widget/MyPage/MyMogakcoCard.dart';

import 'package:home/widget/MyPage/MyTalkCard.dart';
import 'package:home/widget/MyPage/SettingCard.dart';

class myPage extends StatelessWidget {
  const myPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: const SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          MainCard(),
          SizedBox(height: 15),
          MyTalkCard(),
          SizedBox(height: 15),
          MyCatchupCard(),
          SizedBox(height: 15),
          MyNogakcoCard(),
          SizedBox(height: 15),
          SettingCard(),
          SizedBox(height: 10),
        ]),
      ),
    );
  }
}
