import 'dart:math';
import 'package:bloc_learn/API/downloads/fuc.dart';
import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class downloadsPAge extends StatelessWidget {
  const downloadsPAge({super.key});

  @override
  Widget build(BuildContext context) {
    final sections = [
      const appBarWidget(
        tittle: 'Downloads',
      ),
      const section2(),
      const section3(),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return sections[index];
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 5,
                );
              },
              itemCount: sections.length),
        ),
      ),
    );
  }
}

class section2 extends StatelessWidget {
  const section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.settings,
              color: kWhite,
            ),
            Text('Something for you')
          ],
        ),
        const Text(
          'Indroducing Downloads for you',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        const Text(
          'We will download a personalised selection of \nmovies and shows for you. So there is\n always something to watch on your\ndevice.',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: FutureBuilder(
            future: getDownloads(),
            builder: (context, snapshot) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: size.width * .37,
                    backgroundColor: kgrey,
                  ),
                  (snapshot.hasData)
                      ? downLoadImagewidget(
                          size,
                          '$img${snapshot.data?[6].posterPath}',
                          -12,
                          const EdgeInsets.only(right: 170))
                      : const Center(child: CircularProgressIndicator()),
                  downLoadImagewidget(
                      size,
                      '$img${snapshot.data?[9].posterPath}',
                      12,
                      const EdgeInsets.only(left: 170)),
                  downLoadImagewidget(
                      size * 1,
                      '$img${snapshot.data?[4].posterPath}',
                      0,
                      const EdgeInsets.only())
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Transform downLoadImagewidget(
      Size size, String imageList, double angle, EdgeInsets margin) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width * .37,
        height: size.width * .55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: NetworkImage(imageList), fit: BoxFit.cover)),
      ),
    );
  }
}

class section3 extends StatelessWidget {
  const section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Setup',
              style: TextStyle(color: kWhite),
            ),
            color: kButnColorBlue,
          ),
        ),
        MaterialButton(
          color: kWhite,
          onPressed: () {},
          child: const Text(
            'See what you can download',
            style: TextStyle(color: scaffback),
          ),
        ),
      ],
    );
  }
}
