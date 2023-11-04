// 스플래쉬 페이지
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/graphic/Splash.png',
            height: 100,
            width: 100,
          ),
        // Image.asset(                 
        //   'assets/graphic/Splash.png',
        //   width: 100,
        // ),
          Container(
            width: double.infinity, 
            child: Padding(
              padding: EdgeInsets.only(bottom: 150, right: 5, left: 5),
              child: ElevatedButton(
                onPressed: () {
                  // 동작
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.primary_100), 
                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                ),
                child: Text("시작하기"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}