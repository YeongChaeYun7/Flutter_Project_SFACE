import 'package:flutter/material.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';

import 'package:home/widget/Common/TitleBar.dart';
import 'package:home/widget/FloatingButton/FloatingButton.dart';

import 'package:home/widget/HotTalk/BubbleChat.dart';

import 'package:home/widget/HotTalk/HomeAvatar.dart';

// import 'package:home/widget/HotTalk/hotTalkBar.dart';
// import 'package:home/widget/HotTalk/HotTalkBar.dart';
// import 'package:home/widget/HotTalk/TalkTalkBar.dart';

import 'package:home/widget/Search/search.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: FloatingButton(),
      body: Column(
        children: [
          Search(),
          Column(children: [
            TitleBar(imagePath: 'assets/icon/icon_70/fire.svg', Title: '핫한톡'),
            Row(children: [
              HomeAvatar(),
              BubbleChat(
                maxLines: 1,
              ),
            ])
          ]),
          SizedBox(height: 25),
          Column(
            children: [
              TitleBar(imagePath: 'assets/icon/icon_70/fire.svg', Title: '톡톡톡'),
              Row(children: [
                HomeAvatar(),
                BubbleChat(
                  maxLines: 1,
                ),
              ]),
              Row(children: [
                HomeAvatar(),
                BubbleChat(
                  maxLines: 1,
                ),
              ]),
              Row(children: [
                HomeAvatar(),
                BubbleChat(
                  maxLines: 1,
                ),
              ]),
              Row(children: [
                HomeAvatar(),
                BubbleChat(
                  maxLines: 1,
                ),
              ])
            ],
          )
        ],
      ),
    );
  }
}
