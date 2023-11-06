// 모각코의 그룹만들기 포스트 작성 카드
// 태그 입력 기능 없음
import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';

class PostCard extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  // final List<String> tags;

  PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: MediaQuery.of(context).size.width * 0.97,
      padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.neutral_30, width: 0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // 제목 입력란
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: '제목을 입력해주세요.',
                    hintStyle: TextStyle(color: AppColors.neutral_40),
                    // Remove the underline border
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.neutral_40,
                  ),
                ),
                // 내용 입력란
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    controller: contentController,
                    decoration: InputDecoration(
                      hintText: '내용을 입력해 주세요.',
                      hintStyle: TextStyle(color: AppColors.neutral_40),
                      // Remove the underline border
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.neutral_40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: ['태그 입력','태그 입력'].map((tag) {
              return Chip(
                label: Text(
                  tag,
                  style: TextStyle(
                    color: AppColors.neutral_60,
                    fontSize: 12,
                  ),
                ),
                backgroundColor: AppColors.background_5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

  //   final String title = '제목을 입력해주세요.';
  // final String content = '내용을 입력해 주세요.';
  // final List<String> tags = ['태그 입력','태그 입력']; 