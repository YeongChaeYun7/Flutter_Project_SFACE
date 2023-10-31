import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/HotTalk/TalkSkeletonLayout.dart';
import 'package:home/widget/Search/search.dart';
// import 'package:home/widget/Talk/FloatingButton.dart';

import 'package:shimmer/shimmer.dart';

class SkeletonPage extends StatelessWidget {
  const SkeletonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: const FloatingButton(),
      body: Column(children: [
        const Search(),
        Shimmer.fromColors(
          baseColor: AppColors.neutral_20,
          highlightColor: Colors.white,
          child: const Column(
            children: [
              TalkSkeletonLayout(),
              SizedBox(height: 30),
              TalkSkeletonLayout(),
              SizedBox(height: 30),
              TalkSkeletonLayout(),
              SizedBox(height: 30),
              TalkSkeletonLayout(),
              SizedBox(height: 30),
              TalkSkeletonLayout(),
            ],
          ),
        ),
      ]),
    );
  }
}
