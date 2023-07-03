import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/homepage/widgets/back_ground_card.dart';
import 'package:bloc_learn/presentation/homepage/widgets/number_card.dart';
import 'package:bloc_learn/presentation/homepage/widgets/tiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

ValueNotifier<bool> scrolNotifier = ValueNotifier(true);

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrolNotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrolNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrolNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    backGroundCard(),
                    ReleasedTile(text: 'Relesed in the past year'),
                    TrendnfTile(text: 'Trending Now'),
                    NumberCard(),
                    topTv(text: 'South Indian Cinema'),
                    topRated(text: 'Tence Drama')
                  ],
                ),
                scrolNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 2000),
                        width: double.infinity,
                        height: 100,
                        color: Colors.black.withOpacity(.4),
                        child: Column(
                          children: [
                            kheigh,
                            Row(
                              children: [
                                kwidth,
                                Image.network(
                                  netflix,
                                  width: 40,
                                  height: 40,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: kWhite,
                                  size: 36,
                                ),
                                kwidth,
                                Container(
                                    width: 30,
                                    height: 30,
                                    color: kButnColorBlue),
                                kwidth
                              ],
                            ),
                            kheigh,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                textWidget('TV Shows'),
                                textWidget('Movies'),
                                textWidget('Categories'),
                              ],
                            ),
                          ],
                        ),
                      )
                    : kheigh,
              ],
            ),
          );
        },
      ),
    );
  }

  Text textWidget(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w900,
        ),
      );
}

class customButtonWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final double isize;
  final double tsize;
  const customButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    this.isize = 28,
    this.tsize = 18,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhite,
          size: isize,
        ),
        Text(
          text,
          style: TextStyle(fontSize: tsize, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
