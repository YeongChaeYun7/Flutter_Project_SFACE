// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:home/widget/GreyBox.dart';
import 'package:home/widget/HotTalk/HeartIconButton.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/Common/miniHorizontalUserData.dart';
import 'package:home/widget/HotTalk/ScoreAvatar.dart';

class CatchupCard extends StatelessWidget {
  final String imagePath; // 아바타 이미지
  final String userClass; // 개발자 / 1기
  final String userName; // 신디
  final String userType; // 수료생

  const CatchupCard({
    Key? key,
    required this.userType,
    required this.imagePath,
    required this.userClass,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width * 0.94,// 모각코는 0.98
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: AppColors.neutral_30, width: 0.2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(left: 5, right: 3),
                  margin: EdgeInsets.all(16.0),
                  child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MiniUserData(
                              imagePath: 'assets/icon/avatar/Property 1=Default.svg', 
                              userClass: '개발자 / 1기', 
                              userName: '우디', 
                              userType:'수료생',
                              ),
                              HeartIconButton(),
                            ],
                        ),
                        SizedBox(height: 8),
                        Text('플러터 3.10 버전 업데이트 정리 지금부터 알려드릴게요!',
                        style: TextStyle(
                          color: AppColors.neutral_70,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,),
                        SizedBox(height: 8),
                        Text('2023.09.04',
                          style: TextStyle(
                            color: AppColors.neutral_70,
                            fontSize: 12,
                            )),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            GreyBox(text: '# 플러터'),
                            SizedBox(width: 5),
                            GreyBox(text: '# 업데이트'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                  ),
                  // child: AspectRatio(
                    // aspectRatio: 1.0,// 가로 길이 고정. 
                    child: Container(
                      height: double.infinity,
                      color: AppColors.primary_100,
                      child:SvgPicture.asset('assets/catchups/Rocket.svg',// 없는 파일
                      fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ScoreAvatar(),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05)
          ],
        )
      ],
    );
  }
}