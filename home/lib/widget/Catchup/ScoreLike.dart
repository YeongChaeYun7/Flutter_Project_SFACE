import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class ScoreLike extends StatelessWidget {
  const ScoreLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 45,
          child: Stack(children: [
            SvgPicture.asset(
              'assets/icon/avatar/Property 1=Default.svg',
              height: 19,
            ),
            Positioned(
              left: 12,
              child: SvgPicture.asset(
                'assets/icon/avatar/Property 1=Default.svg',
                height: 19,
              ),
            ),
            Positioned(
              left: 24,
              child: SvgPicture.asset(
                'assets/icon/avatar/Property 1=Default.svg',
                height: 19,
              ),
            ),
          ]),
        ),
        SvgPicture.asset(
          'assets/icon/icon_20/Property 1=Like.svg',
          height: 14,
        ),
        const Text(
          '5',
          style: TextStyle(fontSize: 11, color: AppColors.primary_80),
        ),
      ],
    );
  }
}
