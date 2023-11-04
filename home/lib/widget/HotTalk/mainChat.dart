import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';
import 'package:home/widget/HotTalk/HeartIconButton.dart';
import 'package:home/widget/HotTalk/ScoreAvatar.dart';

class mainChat extends StatelessWidget {
  const mainChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          SizedBox(
            width: 100,
            height: 80,
            child: Stack(children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/icon/avatar/Property 1=Default.svg',
                ),
              ),
              Positioned(
                top: 63,
                right: 16,
                left: 16,
                child: Container(
                  alignment: Alignment.center,
                  height: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color.fromRGBO(51, 122, 255, 1),
                  ),
                  child: const Text(
                    '개발자 / 1기',
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            '캐서린',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ]),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ChatBubble(
              clipper: ChatBubbleClipper2(
                type: BubbleType.receiverBubble,
                radius: 6,
              ),
              backGroundColor: Colors.white,
              elevation: 0,
              child: Container(
                height: 37,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.61,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '24분 전',
                            style: TextStyle(
                                fontSize: 11, color: AppColors.neutral_40),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '근데 혹시 15일차 강의 푸신 분 있으면 좀 알려주세요. 뭐가 바뀌어야 하죠',
                            style: TextStyle(fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(width: 20),
                    HeartIconButton(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const ScoreAvatar(),
          ],
        ),
      ],
    );
  }
}
