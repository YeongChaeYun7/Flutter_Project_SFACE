import 'package:flutter/material.dart';
import 'package:home/widget/Shimmer/ShimmerContainer.dart';

class ShimmerTalkBlock2 extends StatelessWidget {
  const ShimmerTalkBlock2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}
