// 캐치업!
import 'package:flutter/material.dart';
import 'package:home/widget/AppBar/MainAppBar.dart';
import 'package:home/widget/Catchup/CatchupCard.dart';
import 'package:home/widget/Catchup/DateSortButton.dart';
import 'package:home/widget/Catchup/TechnologyStackList.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/Search/search.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';

class HotCatchupPage extends StatelessWidget {
  HotCatchupPage({super.key});

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
              SizedBox(height: 3),
              Search(),
              TitleBar2(Title: '캐치업!'),
              TechnologyStackList(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  DateSortButton(),
                ],
              ),
              SizedBox(height: 8),
              CatchupCard(imagePath: 'assets/icon/icon_70/laptop.svg', userClass: '개발자/1기', userName: '신디', userType: '수료생',),
              SizedBox(height: 16),
              CatchupCard(imagePath: 'assets/icon/icon_70/laptop.svg', userClass: '개발자/1기', userName: '신디', userType: '수료생',),
              CatchupCard(imagePath: 'assets/icon/icon_70/laptop.svg', userClass: '개발자/1기', userName: '신디', userType: '수료생',),
              CatchupCard(imagePath: 'assets/icon/icon_70/laptop.svg', userClass: '개발자/1기', userName: '신디', userType: '수료생',),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar(), // error. the constructor being called isn't a const constructor.
      ),
    );
  }
}