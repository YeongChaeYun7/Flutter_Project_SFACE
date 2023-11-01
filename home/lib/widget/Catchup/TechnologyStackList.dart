// TechnologyStackList
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TechnologyStackList extends StatelessWidget {
  const TechnologyStackList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildSvgIconButton('assets/icon/icon_50/Property 1=Flutter.svg', () {
            // 버튼 함수 추가
            print('Flutter');
          }),
          _buildSvgIconButton('assets/icon/icon_50/Property 1=Python.svg', () {
            print('Python');
          }),
          _buildSvgIconButton('assets/icon/icon_50/Property 1=Js.svg', () {
            print('JavaScript');
          }),
          _buildSvgIconButton('assets/icon/icon_50/Property 1=React.svg', () {
            print('React');
          }),
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
                child: SvgPicture.asset(
                  svgAssetPath,
                  width: 60,
                  height: 60,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}