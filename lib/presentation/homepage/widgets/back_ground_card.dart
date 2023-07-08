import 'package:bloc_learn/API/downloads/fuc.dart';
import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/homepage/home_page.dart';
import 'package:flutter/material.dart';

class backGroundCard extends StatelessWidget {
  const backGroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getDownloads(),
      builder: (context, snapshot) {
        return Stack(
          children: [
            Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage('$img${snapshot.data?[0].posterPath}'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const customButtonWidget(icon: Icons.add, text: 'My List'),
                    _playBytton(),
                    const customButtonWidget(text: 'Info', icon: Icons.info),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  TextButton _playBytton() {
    return TextButton.icon(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhite)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
      ),
      label: const Text('Play'),
    );
  }
}
