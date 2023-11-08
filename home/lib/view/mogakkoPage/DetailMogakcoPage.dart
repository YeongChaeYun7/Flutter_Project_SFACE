import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Catchup/TechnologyStackList.dart';
import 'package:home/widget/Common/IconFloatingButton.dart';
import 'package:home/widget/Common/SortButton.dart';
import 'package:home/widget/Common/TitleBar2.dart';
import 'package:home/widget/Mogakco/DetailAvatarList.dart';
import 'package:home/widget/Mogakco/DetailMogakco.dart';

class DetailHotMogackoPage extends StatelessWidget {
  const DetailHotMogackoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconFloatingButton(imagePath: 'assets/icon/icon_30/Write.svg'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 3),
            const TitleBar2(Title: '핫한 모각코'),
            const TechnologyStackList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SortButton(),
              ],
            ),
            const SizedBox(height: 16),
            DetailMogakco(
              imagePath: 'assets/icon/icon_70/laptop.svg',
              userClass: '개발자/1기',
              userName: '신디',
              userType: '수료생',
            ),
            DetailAvatarList(
              imagePaths: [
                'assets/icon/avatar/Property 1=Default.svg',
                'assets/icon/avatar/Property 1=Default.svg',
                'assets/icon/avatar/Property 1=Default.svg',
              ],
              userClassList: [
                '개발자 / 1기',
                '개발자 / 1기',
                '개발자 / 1기',
              ],
              userNameList: [
                '영채',
                '은진',
                '예지',
              ],
            ),
            Container(
            width: double.infinity, 
            child: Padding(
              padding: EdgeInsets.only(bottom: 100, right: 5, left: 5),
              child: ElevatedButton(
                onPressed: () {
                  // 동작
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.primary_100), 
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 55)),
                ),
                child: Text("참여하기",
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}