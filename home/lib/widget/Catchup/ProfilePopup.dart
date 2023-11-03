// 캐치업카드 프로필 클릭시 뜨는 팝업창
// 로그인 파트에서 만든 위젯 재사용 예정이라 내용만 정리해놓음
import 'package:flutter/material.dart';

class DeletePopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(); // 클릭 시 팝업을 닫음
      },
      child: AlertDialog(
        title: Text('삭제'),
        content: Container(
          child: Text('popup'),
        ),
      ),
    );
  }
}
