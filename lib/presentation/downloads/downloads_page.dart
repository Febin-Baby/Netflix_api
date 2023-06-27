import 'dart:math';
import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class downloadsPAge extends StatelessWidget {
  downloadsPAge({super.key});

  @override
  Widget build(BuildContext context) {
    final sections = [
      _smartDownloads(),
      const section2(),
      const section3(),
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: appBarWidget(
            tittle: 'Downloads',
          ),
        ),
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

  Row _smartDownloads() {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kWhite,
        ),kwidth,
        Text('Smart downloaders'),
      ],
    );
  }
}

class section2 extends StatelessWidget {
  const section2({super.key});

  @override
  Widget build(BuildContext context) {
    final imageList = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT72K7rrhibF5FchnPc31OuHydO-yYDU0MMhg&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPdo0lQzpcQgGolxiK2o7G8ZIXVT9xN_BeqQ&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRgg5BejHIUpaSir9FNF6Fc1JXWviPJ6UUxQ&usqp=CAU',
    ];
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
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
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * .37,
                backgroundColor: kgrey,
              ),
              downLoadImagewidget(
                  size, imageList[0], -12, const EdgeInsets.only(right: 170)),
              downLoadImagewidget(
                  size, imageList[1], 12, const EdgeInsets.only(left: 170)),
              downLoadImagewidget(
                  size * 1, imageList[2], 0, const EdgeInsets.only())
            ],
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
