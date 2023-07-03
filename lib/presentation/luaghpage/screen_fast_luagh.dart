import 'package:bloc_learn/presentation/luaghpage/widgets/video_list_item.dart';
import 'package:flutter/material.dart';

class screenFastLaugh extends StatelessWidget {
  const screenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(20, (index) {
                return videoListItem(
                  index: index,
                );
              }))),
    );
  }
}
