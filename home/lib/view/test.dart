// 이달의 스페이서
import 'package:flutter/material.dart';
import 'package:home/widget/Common/TitleBar2.dart';

class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.blue, Colors.white, Colors.white],
            stops: [0.0, 0.33, 0.33, 1.0], // 각 색상의 비율 설정
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TitleBar2(Title: '이달의 스페이서')
          ],
      ),
    )
    );
  }
}

