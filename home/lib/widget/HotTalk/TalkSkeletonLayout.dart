import 'package:flutter/material.dart';

class TalkSkeletonLayout extends StatelessWidget {
  const TalkSkeletonLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 18,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(13)),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 14,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(13)),
                ),
              ],
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100)),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 14,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(13)),
                    ),
                    const SizedBox(width: 9),
                    Container(
                      height: 14,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(13)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
