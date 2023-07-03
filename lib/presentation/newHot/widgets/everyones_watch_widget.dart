import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/homepage/home_page.dart';
import 'package:bloc_learn/presentation/newHot/widgets/video_widgwt_custm.dart';
import 'package:flutter/material.dart';

class EvryOneWtchWidget extends StatelessWidget {
  const EvryOneWtchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheigh,
        Text(
          'Friends',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(
          'The Internet Protocol (IP) is the network layer communications protocol in the Internet protocol suite for relaying datagrams across network boundaries. Its routing function enables internetworking, and essentially establishes the Internet.',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        kheigh,
        VideoCustomWidget(),
        kheigh,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            customButtonWidget(
              text: 'text',
              icon: Icons.share,
              isize: 20,
              tsize: 16,
            ),
            kwidth,
            customButtonWidget(
              text: 'text',
              icon: Icons.add,
              isize: 20,
              tsize: 16,
            ),
            kwidth,
            customButtonWidget(
              text: 'text',
              icon: Icons.play_arrow,
              isize: 20,
              tsize: 16,
            ),
            kwidth
          ],
        )
      ],
    );
  }
}
