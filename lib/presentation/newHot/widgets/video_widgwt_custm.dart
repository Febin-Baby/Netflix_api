import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:flutter/material.dart';

class VideoCustomWidget extends StatelessWidget {
  const VideoCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            evryOneImg,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: CircleAvatar(
            backgroundColor: scaffback.withOpacity(.6),
            radius: 22,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                color: kWhite,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
