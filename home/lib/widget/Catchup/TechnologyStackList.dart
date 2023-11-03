// TechnologyStackList
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
class TechnologyStackList extends StatefulWidget {
  const TechnologyStackList({Key? key}) : super(key: key);

  @override
  _TechnologyStackListState createState() => _TechnologyStackListState();
}

class _TechnologyStackListState extends State<TechnologyStackList> {
  bool isClicked = false;
  static List<String> names = ["Flutter", "Python", "JavaScript", "React"];
  static List<String> icons = [
    'assets/icon/icon_50/Flutter.svg',
    'assets/icon/icon_50/Python.svg',
    'assets/icon/icon_50/JS.svg',
    'assets/icon/icon_50/React.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildSvgIconButton(
            icons[0],
            () {
              setState(() {
                isClicked = !isClicked;
              });
              print(names[0]);
            },
          ),
          _buildSvgIconButton(
            icons[1],
            () {
              setState(() {
                isClicked = !isClicked;
              });
              print(names[1]);
            },
          ),
          _buildSvgIconButton(
            icons[2],
            () {
              setState(() {
                isClicked = !isClicked;
              });
              print(names[2]);
            },
          ),
          _buildSvgIconButton(
            icons[3],
            () {
              setState(() {
                isClicked = !isClicked;
              });
              print(names[3]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSvgIconButton(String svgAssetPath, Function() onPressed) {
    return Row(
      children: [
        SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              InkWell(
                onTap: onPressed,
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: ShapeDecoration(
                        color: isClicked ? AppColors.primary_100 : Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: isClicked ? AppColors.primary_100 : AppColors.background_5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            svgAssetPath,
                            width: 35,
                            height: 35,
                          ),
                        ],
                      ),
                    ),
                      Text(
                        names[1],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: isClicked ? AppColors.primary_100 : AppColors.neutral_70,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// class TechnologyStackList extends StatelessWidget {
//   const TechnologyStackList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           _buildSvgIconButton('assets/icon/icon_50/Property 1=Flutter.svg', () {
//             // 버튼 함수 추가
//             print('Flutter');
//           }),
//           _buildSvgIconButton('assets/icon/icon_50/Property 1=Python.svg', () {
//             print('Python');
//           }),
//           _buildSvgIconButton('assets/icon/icon_50/Property 1=Js.svg', () {
//             print('JavaScript');
//           }),
//           _buildSvgIconButton('assets/icon/icon_50/Property 1=React.svg', () {
//             print('React');
//           }),
//         ],
//       ),
//     );
//   }
// Widget _buildSvgIconButton(String svgAssetPath, Function() onPressed) {
//   return Row(
//     children: [
//       SizedBox(width: 8),
//       Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Column(
//           children: [
//             Container(
//               width: 50,
//               height: 50,
//               decoration: ShapeDecoration(
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   side: BorderSide(width: 1, color: Color(0xFFE6E6E6)),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   InkWell(
//                     onTap: onPressed,
//                     child: SvgPicture.asset(
//                       svgAssetPath,
//                       width: 60,
//                       height: 60,
//                     ),
//                   ),
//                   Text(
//                     "플러터",
//                     style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }

//   Widget _buildSvgIconButton(String svgAssetPath, Function() onPressed) {
//     return Row(
//       children: [
//         SizedBox(width: 8),
//         Padding(
//           padding: const EdgeInsets.all(5.0),
//           child: Column(
//             children: [
//               InkWell(
//                 onTap: onPressed,
//                 child: SvgPicture.asset(
//                   svgAssetPath,
//                   width: 60,
//                   height: 60,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
