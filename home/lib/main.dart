import 'package:flutter/material.dart';
import 'package:home/view/spacerPage/spacerPage.dart';
import 'package:home/view/spacerPage/test.dart';
import 'package:home/widget/Common/miniHorizontalUserData.dart';
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: MakeGroupPage(),
//       ),
//     );
//   }
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpacerPage(),
                            // child: MiniUserData(
                            //   imagePath: 'assets/icon/avatar/Property 1=Default.svg',
                            //   userClass: '개발자 / 1기',
                            //   userName: '우디',
                            //   userType: '수료생',
                            // ),
      ),
    );
  }
}