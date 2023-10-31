import 'package:flutter/material.dart';

import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/FloatingButton.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:home/widget/HotTalk/TalkTalkBar.dart';
import 'package:home/widget/Search/search.dart';

import '../widget/HotTalk/hotTalkBar.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingButton(),
        body: Column(
          children: [
            Search(),
            Column(children: [
              HotTalkBar(),
              Row(children: [
                HomeAvatar(),
                BubbleChat(),
              ])
            ]),
            SizedBox(height: 25),
            Column(
              children: [
                TalkTalkBar(),
                Row(children: [
                  HomeAvatar(),
                  BubbleChat(),
                ]),
                Row(children: [
                  HomeAvatar(),
                  BubbleChat(),
                ]),
                Row(children: [
                  HomeAvatar(),
                  BubbleChat(),
                ]),
                Row(children: [
                  HomeAvatar(),
                  BubbleChat(),
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
