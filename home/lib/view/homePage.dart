import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/widget/Ad/ad.dart';
import 'package:home/widget/AppBar/MainAppBar.dart';
import 'package:home/widget/Catchup/CatchupCard.dart';
import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';
import 'package:home/widget/Mogakko/MogakkoCard.dart';
import 'package:home/widget/Search/search.dart';
// import 'package:home/widget/Spacer/SpacerCard.dart';
import 'package:home/widget/Spacer/SpacerCardList.dart';
import 'package:home/widget/Common/TitleBar.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: MainAppBar(),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Image.asset('assets/pngRocket.png'),
              // SvgPicture.asset(
              //           'assets/catchup/rocket.svg'),
              Ad(),
              SizedBox(height: 3),
              Search(),
              TitleBar(imagePath: 'assets/icon/icon_70/fire.svg', Title: '핫한 톡',),
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
              TitleBar(imagePath: 'assets/icon/icon_70/dart.svg', Title: '핫한 캐치업',),
              CatchupCard(imagePath: 'assets/icon/icon_70/laptop.svg', userClass: '개발자/1기', userName: '신디', userType: '수료생',),
              TitleBar(imagePath: 'assets/icon/icon_70/letter.svg', Title: '핫한 모각코',),
              MoggakcoCard(imagePath: 'assets/icon/icon_70/laptop.svg', userClass: '개발자/1기', userName: '신디', userType: '수료생',),
              TitleBar(imagePath: 'assets/icon/icon_70/laptop.svg', Title: '이달의 스페이서',),
              // Wi<SpacerCardList>,
              SpacerCardList(), // error. the constructor being called isn't a const constructor.
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar(), // error. the constructor being called isn't a const constructor.
      ),
    );
  }
}
              // SpacerCard(
              //       imagePath: 'assets/icon/avatar/Property 1=Default.svg',
              //       userClass: '개발자/1기',
              //       userName: '신디',
              //       userType: '수료생',
              //       tagimagePath: 'assets/icon/tag/1st.svg',
              //     ),