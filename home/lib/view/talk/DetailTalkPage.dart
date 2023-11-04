import 'package:flutter/material.dart';
import 'package:home/widget/HotTalk/BubbleChat.dart';
import 'package:home/widget/HotTalk/HomeAvatar.dart';

class DetailTalkPage extends StatelessWidget {
  const DetailTalkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [HomeAvatar(), BubbleChat(maxLines: 3)],
        ),
        const SizedBox(height: 30),
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ],
    );
  }
}
