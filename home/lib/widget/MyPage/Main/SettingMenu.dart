import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/MyPage/DottedLinePackage.dart';

class SettingMenu extends StatelessWidget {
  const SettingMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 280,
      width: MediaQuery.of(context).size.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
        border: Border.all(
          color: AppColors.neutral_10,
          width: 1,
        ),
      ),
      child: Column(children: [
        ListTile(
          horizontalTitleGap: -10,
          leading: SvgPicture.asset(
            'assets/icon/icon_20/_Setting.svg',
          ),
          title: const Text(
            '설정',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        ListTile(
          dense: true,
          leading: const Text(
            '내 정보 수정하기',
            style: TextStyle(fontSize: 16),
          ),
          trailing: IconButton(
              icon: SvgPicture.asset(
                'assets/icon/icon_20/Right.svg',
              ),
              onPressed: () {}),
        ),
        DottedLinePackage(
          lineLength: MediaQuery.of(context).size.width * 0.85,
        ),
        ListTile(
          dense: true,
          leading: const Text(
            '비밀번호 변경',
            style: TextStyle(fontSize: 16),
          ),
          trailing: IconButton(
              icon: SvgPicture.asset(
                'assets/icon/icon_20/Right.svg',
              ),
              onPressed: () {}),
        ),
        DottedLinePackage(
          lineLength: MediaQuery.of(context).size.width * 0.85,
        ),
        ListTile(
          dense: true,
          leading: const Text(
            '로그아웃',
            style: TextStyle(fontSize: 16),
          ),
          trailing: IconButton(
              icon: SvgPicture.asset(
                'assets/icon/icon_20/Right.svg',
              ),
              onPressed: () {}),
        ),
        DottedLinePackage(
          lineLength: MediaQuery.of(context).size.width * 0.85,
        ),
        ListTile(
          dense: true,
          leading: const Text(
            '회원탈퇴',
            style: TextStyle(fontSize: 16),
          ),
          trailing: IconButton(
              icon: SvgPicture.asset(
                'assets/icon/icon_20/Right.svg',
              ),
              onPressed: () {}),
        ),
        DottedLinePackage(
          lineLength: MediaQuery.of(context).size.width * 0.85,
        ),
      ]),
    ));
  }
}
