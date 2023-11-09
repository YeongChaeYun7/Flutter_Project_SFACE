// import 'package:flutter/material.dart';
// import 'package:home/styles/app_colors.dart';
// import 'package:home/view/mogakkoPage/DetailMogakcoPage.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
//   final TextEditingController tagController = TextEditingController();
//   final List<String> tags = [];
// }

// class _MyAppState extends State<MyApp> {
  

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DetailHotMogackoPage(),
//     );}}

import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/view/mogakkoPage/DetailMogakcoPage.dart';
import 'package:home/widget/Mogakco/GroupParticipationPopup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailHotMogackoPage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My App'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // GroupParticipationPopup 위젯을 호출하여 다이얼로그를 표시
//             showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 return GroupParticipationPopup();
//               },
//             );
//           },
//           child: Text('Show Popup'),
//         ),
//       ),
//     );
//   }
// }
