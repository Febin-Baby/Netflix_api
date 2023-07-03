import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/homepage/home_page.dart';
import 'package:bloc_learn/presentation/newHot/widgets/video_widgwt_custm.dart';
import 'package:flutter/material.dart';

class commingSoonWidget extends StatelessWidget {
  const commingSoonWidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 470,
          child: Column(
            children: [
              Text(
                'FEB',
                style: TextStyle(color: kgrey),
              ),
              Text(
                '11',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 470,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoCustomWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'The splash',
                    style: TextStyle(fontSize: 36),
                  ),
                  Row(
                    children: [
                      customButtonWidget(
                        text: 'Remind me',
                        icon: Icons.alarm,
                        isize: 20,
                        tsize: 12,
                      ),
                      kwidth,
                      customButtonWidget(
                          text: 'Info', icon: Icons.info, isize: 20, tsize: 12),
                      kwidth,
                    ],
                  ),
                ],
              ),
              kheigh,
              Text('Coming on friday'),
              Text(
                'The Splash',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Text(
                'The Internet Protocol (IP) is the network layer communications protocol in the Internet protocol suite for relaying datagrams across network boundaries. Its routing function enables internetworking, and essentially establishes the Internet.',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
