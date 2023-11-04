import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';
import 'package:home/widget/MyPage/DottedLinePackage.dart';
import 'package:home/widget/MyPage/myPageAvatar.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/MyPage/MyPageNoScore.dart';
import 'package:home/widget/MyPage/MyPageScore.dart';

class myPage extends StatelessWidget {
  const myPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Container(
              height: 380,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  border: Border.all(
                    color: AppColors.neutral_10,
                    width: 1,
                  )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const myPageAvatar(
                        imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                        userClass: '디자이너/1기'),
                    const SizedBox(height: 25),
                    DottedLinePackage(
                        lineLength: MediaQuery.of(context).size.width * 0.85),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icon/icon_20/laptop.svg'),
                        const SizedBox(width: 8),
                        const Text(
                          '스페이서 달성',
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                'assets/icon/icon_20/Left.svg')),
                        const SizedBox(width: 30),
                        Column(
                          children: [
                            GreyBox(text: '1월'),
                            const MyPageNoScore(
                              imagePath: 'assets/icon/tag/No.svg',
                              iconPath:
                                  'assets/icon/icon_20/Property 1=NotSelect.svg',
                              text: '-',
                            ),
                          ],
                        ),
                        const SizedBox(width: 23),
                        Column(
                          children: [
                            GreyBox(text: '2월'),
                            const MyPageScore(
                              imagePath: 'assets/icon/tag/1st.svg',
                              iconPath:
                                  'assets/icon/icon_20/Property 1=Like.svg',
                              text: '400',
                            ),
                          ],
                        ),
                        const SizedBox(width: 23),
                        Column(
                          children: [
                            GreyBox(text: '3월'),
                            const MyPageScore(
                              imagePath: 'assets/icon/tag/3rd.svg',
                              iconPath:
                                  'assets/icon/icon_20/Property 1=Like.svg',
                              text: '400',
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                'assets/icon/icon_20/Right.svg')),
                      ],
                    ),
                  ]),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
                border: Border.all(
                  color: AppColors.neutral_10,
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icon/icon_20/fire.svg'),
                      SizedBox(width: 5),
                      Text(
                        '나의 톡!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: Text('내가 쓴 톡'),
                        trailing:
                            SvgPicture.asset('assets/icon/icon_20/Right.svg'),
                      ),
                      DottedLinePackage(
                          lineLength: MediaQuery.of(context).size.width * 0.85),
                      ListTile(
                        leading: Text('내가 좋아요 한 톡'),
                        trailing:
                            SvgPicture.asset('assets/icon/icon_20/Right.svg'),
                      ),
                      DottedLinePackage(
                          lineLength: MediaQuery.of(context).size.width * 0.85),
                      ListTile(
                        leading: Text('내가 쓴 이어달린 톡'),
                        trailing:
                            SvgPicture.asset('assets/icon/icon_20/Right.svg'),
                      ),
                      DottedLinePackage(
                          lineLength: MediaQuery.of(context).size.width * 0.85),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
