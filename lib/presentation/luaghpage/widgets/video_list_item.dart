import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:flutter/material.dart';

class videoListItem extends StatelessWidget {
  final int index;
  const videoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //lrft side
                CircleAvatar(
                  backgroundColor: scaffback.withOpacity(.6),
                  radius: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: kWhite,
                    ),
                  ),
                ),
                //right side
                const Spacer(),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(dummyUrl),
                    ),
                    vidioActionWidget(
                        icon: Icons.emoji_emotions, tittle: 'LOL'),
                    vidioActionWidget(icon: Icons.add, tittle: 'My list'),
                    vidioActionWidget(icon: Icons.share, tittle: 'Share'),
                    vidioActionWidget(icon: Icons.play_arrow, tittle: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class vidioActionWidget extends StatelessWidget {
  final IconData icon;
  final String tittle;

  const vidioActionWidget(
      {super.key, required this.icon, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          Text(
            tittle,
            style: const TextStyle(fontSize: 14, color: kWhite),
          ),
        ],
      ),
    );
  }
}
