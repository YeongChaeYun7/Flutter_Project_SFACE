import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

import 'package:home/widget/HotTalk/HeartIconButton.dart';

class BubbleChat extends StatelessWidget {
  const BubbleChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatBubble(
      margin: const EdgeInsets.only(bottom: 30), // 말풍선 외부 사이즈(위로 이동)
      padding: const EdgeInsets.symmetric(horizontal: 20), // 말풍선 내부 사이즈 (텍스트)
      clipper: ChatBubbleClipper2(type: BubbleType.receiverBubble),
      backGroundColor: Colors.white,
      elevation: 0,
      child: Container(
        height: 70,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.64,
          maxHeight: MediaQuery.of(context).size.width * 0.3,
        ),
        child: const ListTile(
          title: Text(
            '24분 전',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          subtitle: Text(
            '근데 15일차 강의 푸신 분 ...',
            style: TextStyle(fontSize: 13, color: Colors.black),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: HeartIconButton(),
        ),
      ),
    );
  }
}
