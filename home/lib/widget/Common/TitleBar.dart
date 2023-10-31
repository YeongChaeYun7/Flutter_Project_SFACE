import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleBar extends StatelessWidget {
  final String imagePath;// 이미지 경로
  final String Title;

  const TitleBar({
    Key? key,
    required this.imagePath, 
    required this.Title,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minLeadingWidth: 2,
          horizontalTitleGap: 5,
          leading: SvgPicture.asset(
            this.imagePath,
            height: 22,
          ),
          title: Text(
            this.Title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          trailing: const Icon(Icons.navigate_next),
        ),
      ],
    );
  }
}