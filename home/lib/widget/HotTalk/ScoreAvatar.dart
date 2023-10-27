import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScoreAvatar extends StatelessWidget {
  const ScoreAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'asset/circleavatar.svg',
          height: 25,
        ),
        SvgPicture.asset(
          'asset/Heart.svg',
          height: 15,
        ),
      ],
    );
  }
}
