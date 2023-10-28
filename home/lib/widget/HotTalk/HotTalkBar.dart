import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HotTalkBar extends StatelessWidget {
  const HotTalkBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minLeadingWidth: 2,
          horizontalTitleGap: 5,
          leading: SvgPicture.asset(
            'assets/icon/icon_70/fire.svg',
            height: 22,
          ),
          title: const Text(
            '핫한 톡',
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
