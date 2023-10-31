import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home/styles/app_colors.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  List<double> greyScale = <double>[ 
                                  0.2126,0.7152,0.0722,0,0, 
                                  0.2126,0.7152,0.0722,0,0, 
                                  0.2126,0.7152,0.0722,0,0, 
                                  0,0,0,1,0, 
                                  ];
  static List<String> itemNames = ["홈", "톡", "캐치업!", "모각코!", "마이페이지"];
  static List<String> itemIcons = [
    'assets/icon/icon_30/Home.svg',
    'assets/icon/icon_30/Community.svg',
    'assets/icon/icon_30/Work.svg',
    'assets/icon/icon_30/Lounge.svg',
    'assets/icon/icon_50/woman-a.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // 아이콘 위치를 고정으로 설정
      items: <BottomNavigationBarItem>[
        for (int i = 0; i < itemNames.length; i++)
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.matrix(greyScale), 
              child: SvgPicture.asset(
                itemIcons[i], 
                height: 24,
                width: 24,
              ),
            ),
            label: itemNames[i],
          ),
      ],
      currentIndex: _selectedIndex,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedItemColor: AppColors.background_100, // 선택된 항목의 라벨 색상을 고정
      unselectedItemColor: AppColors.background_100, // 선택되지 않은 항목의 라벨 색상을 고정
      selectedLabelStyle: TextStyle(fontSize: 11), // 선택된 항목의 라벨 크기를 고정
      unselectedLabelStyle: TextStyle(fontSize: 11), // 선택되지 않은 항목의 라벨 크기를 고정
    );
  }
}