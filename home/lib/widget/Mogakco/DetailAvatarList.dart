import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Common/bigAvatar.dart';

class DetailAvatarList extends StatelessWidget {
  final List<String> imagePaths;
  final List<String> userClassList;
  final List<String> userNameList;

  DetailAvatarList({
    required this.imagePaths,
    required this.userClassList,
    required this.userNameList,
  });
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BigAvatar(
                imagePath: imagePaths[index],
                userClass: userClassList[index],
              ),
              Text(
                userNameList.length > index ? userNameList[index] : "    ", // 이름이 없는 경우
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.neutral_60,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}


// 하나씩 스트링 리스트로 받아야 함. 리스트 길이는 상관 없음
      // HorizontalAvatarList(
      //   imagePaths: [
      //     '1',
      //     '2',
      //     '3',
      //   ],
      //   userClassList: [
      //     '1',
      //     '2',
      //     '3',
      //   ],
      //   userNameList: [
      //     '1',
      //     '2',
      //     '3',
      //   ],
      // ),