import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class BigAvatar extends StatelessWidget {
  final String imagePath; // 아바타 이미지
  final String userClass;

  BigAvatar({
    super.key, 
    required this.imagePath, 
    required this.userClass
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 80,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: AppColors.primary_10,
              radius: 35,
              child: SvgPicture.asset(this.imagePath,
              height: 50,
              width: 50,
              ),
            ),
          ),
        Positioned(
          top: 63,
          right: 16,
          left: 16,
          child: Container(
            alignment: Alignment.center,
            height: 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.primary_100
            ),
            child: Text(
              this.userClass,
              style: TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        )
      ]),
    );
  }
}