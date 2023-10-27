import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAvatar extends StatelessWidget {
  const HomeAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 100,
        height: 80,
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 38,
              backgroundColor: const Color.fromARGB(255, 243, 246, 249),
              child: SvgPicture.asset(
                'asset/HotTalkman-a.svg',
                height: 53,
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
                color: const Color.fromRGBO(51, 122, 255, 1),
              ),
              child: const Text(
                '개발자 / 1기',
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ),
          )
        ]),
      ),
      const SizedBox(
        height: 3,
      ),
      const Text(
        '캐서린',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
