import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class FloatingButtonPopup extends StatelessWidget {
  const FloatingButtonPopup({super.key});

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.only(top: 60),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const TextField(
                  maxLines: 10,
                  decoration: InputDecoration(
                    hintText: '내용을 입력해주세요.',
                    hintStyle:
                        TextStyle(fontSize: 15, color: AppColors.neutral_20),
                    contentPadding: EdgeInsets.fromLTRB(12, 30, 0, 0),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: const Size(55, 35),
                      ),
                      child: const Text(
                        '취소하기',
                        style: TextStyle(color: AppColors.primary_50),
                      )),
                  const SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary_90,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        minimumSize: const Size(55, 35),
                      ),
                      child: const Text(
                        '등록하기',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ]),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.primary_80,
      onPressed: () {
        _showCustomDialog(context);
      },
      child: SvgPicture.asset('assets/icon/icon_30/Community.svg',
          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
    );
  }
}
