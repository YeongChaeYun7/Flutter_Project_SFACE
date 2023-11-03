import 'package:flutter/material.dart';

import 'package:home/widget/Ad/ad.dart';
import 'package:home/widget/Common/TitleBar.dart';

import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:home/widget/Search/search.dart';

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
            TitleBar(imagePath: 'assets/icon/icon_70/fire.svg', Title: '핫한톡'),
            Column(
              children: [
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
            ),
          ],
        ),
      ),
    );
  }
}
