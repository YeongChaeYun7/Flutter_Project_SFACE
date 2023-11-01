import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/widget/Common/GreyBox.dart';
import 'package:home/widget/Common/miniAvatar.dart';

class MiniUserData extends StatelessWidget {
  final String imagePath; // 아바타 이미지
  final String userClass;
  final String userName; 
  final String userType; 

  MiniUserData({
    super.key, 
    required this.imagePath, 
    required this.userClass, 
    required this.userName, 
    required this.userType
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MiniAvatar(imagePath: this.imagePath, userClass: this.userClass),
        Text(
          this.userName, 
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),
        GreyBox(text: this.userType),
      ],
    );
  }
}