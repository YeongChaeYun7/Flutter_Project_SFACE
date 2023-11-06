import 'package:flutter/material.dart';

import 'package:home/widget/Catchup/DateSortButton.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/Mogakko/MogakkoCard.dart';

class MyJoinGroupPage extends StatelessWidget {
  const MyJoinGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleBar2(
          Title: '참여중인 그룹',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            DateSortButton(),
          ],
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (BuildContext context, index) => MoggakcoCard(
                    imagePath: 'assets/icon/icon_70/laptop.svg',
                    userClass: '개발자/1기',
                    userName: '신디',
                    userType: '수료생',
                  )),
        ),
      ],
    );
  }
}
