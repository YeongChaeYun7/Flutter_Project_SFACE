import 'package:flutter/material.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/BottomNavBar/BottomNavBar.dart';

import 'package:home/widget/Search/search.dart';
import 'package:home/widget/Shimmer/ShimmerCatchup.dart';
import 'package:home/widget/Shimmer/ShimmerContainer.dart';

import 'package:shimmer/shimmer.dart';

class ShimmercatchupPageAll extends StatelessWidget {
  const ShimmercatchupPageAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const Search(),
        Shimmer.fromColors(
          baseColor: AppColors.neutral_20,
          highlightColor: Colors.white,
          child: Column(children: [
            ShimmerContainer(
              height: 18,
              width: MediaQuery.of(context).size.width * 0.95,
            ),
            const SizedBox(height: 15),
            const ShimmerCatchup(),
            const SizedBox(height: 20),
            ShimmerContainer(
              height: 18,
              width: MediaQuery.of(context).size.width * 0.95,
            ),
            const SizedBox(height: 15),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const ShimmerCatchup();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 8);
              },
              itemCount: 3,
            ),
          ]),
        ),
      ]),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
