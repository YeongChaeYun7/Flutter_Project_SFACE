import 'package:flutter/material.dart';
import 'package:home/widget/Ad/ad.dart';
import 'package:home/widget/AppBar/MainAppBar.dart';
import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:home/widget/HotTalk/ScoreAvatar.dart';
import 'package:home/widget/Search/search.dart';

import '../widget/HotTalk/hotTalkBar.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: MainAppBar(),
        ),
        body: Column(
          children: [
            Ad(),
            SizedBox(height: 3),
            Search(),
            HotTalkBar(),
            Row(
              children: [
                HomeAvatar(),
                Column(
                  children: [
                    BubbleChat(),
                    ScoreAvatar(),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                HomeAvatar(),
                BubbleChat(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
