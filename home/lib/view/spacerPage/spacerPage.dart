// 이달의 스페이서
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/Spacer/Top3SpacerCardList.dart';
import 'package:home/widget/Spacer/TopSpacerBar.dart';
import 'package:home/widget/Spacer/WhiteTilteBar.dart';

class SpacerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: Size(double.infinity, double.infinity),
        painter: MyPainter(),
                child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WhiteTitleBar(Title: '이달의 스페이서'),
            SizedBox(height: 20),
            SvgPicture.asset(
                  'assets/graphic/Graphic4.svg',
                  height: 80,
                  width: 80,
                ),
            SizedBox(height: 20),
            Top3SpacerCardList(),
            SpacerBar( userData: ['assets/icon/avatar/Property 1=Default.svg','영채','개발자/1기','수료생'], 
            ),
          ],
      ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    paint.color = Colors.blue;
    Path bluePath = Path();
    bluePath.lineTo(0, size.height / 3);
    bluePath.quadraticBezierTo(size.width / 2, size.height / 2, size.width, size.height / 3);
    bluePath.lineTo(size.width, 0);
    bluePath.close();
    canvas.drawPath(bluePath, paint);

    paint.color = AppColors.background_5;
    Path whitePath = Path();
    whitePath.moveTo(0, size.height / 3);
    whitePath.quadraticBezierTo(size.width / 2, size.height / 2, size.width, size.height / 3);
    whitePath.lineTo(size.width, size.height);
    whitePath.lineTo(0, size.height);
    whitePath.close();
    canvas.drawPath(whitePath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

