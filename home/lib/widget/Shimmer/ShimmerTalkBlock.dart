import 'package:flutter/material.dart';

import 'package:home/widget/Shimmer/ShimmerContainer.dart';

class ShimmerTalkBlock extends StatelessWidget {
  const ShimmerTalkBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(height: 20),
      ShimmerContainer(
        height: 18,
        width: 400,
      ),
      SizedBox(height: 15),
      Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Column(
              children: [
                ShimmerContainer(
                  height: 50,
                  width: 50,
                ),
                SizedBox(height: 5),
                ShimmerContainer(
                  height: 16,
                  width: 60,
                ),
              ],
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ShimmerContainer(
                  height: 50,
                  width: 330,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    ShimmerContainer(
                      height: 16,
                      width: 60,
                    ),
                    SizedBox(width: 10),
                    ShimmerContainer(
                      height: 16,
                      width: 60,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      SizedBox(height: 53),
      ShimmerContainer(
        height: 18,
        width: 400,
      ),
      SizedBox(height: 20),
    ]);
  }
}
