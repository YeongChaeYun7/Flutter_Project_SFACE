import 'package:flutter/material.dart';
import 'package:home/widget/Ad/ad.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';
import 'package:home/widget/Catchup/CatchupCard.dart';
import 'package:home/widget/Common/TitleBar.dart';
import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';

import 'package:home/widget/Mogakko/MogakkoCard.dart';
import 'package:home/widget/Search/search.dart';
// import 'package:home/widget/Spacer/SpacerCard.dart';
import 'package:home/widget/Spacer/SpacerCardList.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Ad(),
            const SizedBox(height: 3),
            const Search(),
            const TitleBar(
              imagePath: 'assets/icon/icon_70/fire.svg',
              Title: '핫한 톡',
            ),

            const Row(
              children: [
                HomeAvatar(
                    imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                    userClass: '개발자/1기'),
                BubbleChat(),
              ],
            ),
            const TitleBar(
              imagePath: 'assets/icon/icon_70/dart.svg',
              Title: '핫한 캐치업',
            ),
            const CatchupCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            const TitleBar(
              imagePath: 'assets/icon/icon_70/letter.svg',
              Title: '핫한 모각코',
            ),
            const MoggakcoCard(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            const TitleBar(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              Title: '이달의 스페이서',
            ),
            // Wi<SpacerCardList>,
            SpacerCardList(),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
