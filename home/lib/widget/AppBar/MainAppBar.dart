import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: SvgPicture.asset(
          'asset/logo.svg',
          width: 80,
        ),
      ),
    );
  }
}
