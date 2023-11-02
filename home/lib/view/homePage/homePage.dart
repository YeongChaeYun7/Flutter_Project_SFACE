import 'package:flutter/material.dart';

import 'package:home/widget/Ad/ad.dart';

import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:home/widget/Search/search.dart';

import 'package:home/widget/HotTalk/hotTalkBar.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Ad(),
            SizedBox(height: 3),
            Search(),
            HotTalkBar(),
            Column(
              children: [
                Row(children: [
                  HomeAvatar(),
                  BubbleChat(),
                ]),
                Row(children: [
                  HomeAvatar(),
                  BubbleChat(),
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
