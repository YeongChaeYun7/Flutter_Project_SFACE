// 모각코의 그룹만들기의 하단 카드
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class PostCardOtion extends StatelessWidget {
  PostCardOtion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.97,
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.neutral_30, width: 0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildRowWithDashedLine('모집인원', '5명'),
          _buildRowWithDashedLine('모집상태', '모집중'),
        ],
      ),
    );
  }

  Widget _buildRowWithDashedLine(String title, String value) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text(value, style: TextStyle(color: AppColors.primary_100)),
          ],
        ),
        Divider(
          color: AppColors.neutral_30, // Color of the dashed line
          height: 20, // Height of the dashed line
          thickness: 0.2, // Thickness of the dashed line
        ),
      ],
    );
  }
}

