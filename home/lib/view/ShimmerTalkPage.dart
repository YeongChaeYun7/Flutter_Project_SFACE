import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/FloatingButton/FloatingButton.dart';
import 'package:home/widget/Search/search.dart';
import 'package:home/widget/Shimmer/ShimmerTalkBlock.dart';
import 'package:home/widget/Shimmer/ShimmerTalkBlock2.dart';

import 'package:shimmer/shimmer.dart';

class ShimmerTalkPage extends StatelessWidget {
  const ShimmerTalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingButton(),
      body: Column(children: [
        const Search(),
        Shimmer.fromColors(
          baseColor: AppColors.neutral_20,
          highlightColor: Colors.white,
          child: Column(children: [
            const ShimmerTalkBlock(),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const ShimmerTalkBlock2();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 8);
              },
              itemCount: 4,
            ),
          ]),
        ),
      ]),
    );
  }
}
