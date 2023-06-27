import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/searchPage/widgets/search_result.dart';
import 'package:bloc_learn/presentation/widgets/searchtittle.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        searchtittle('Released in the past year'),
        kheigh,
        Container(
          width: 200,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: kreadius,
            image: DecorationImage(
              image: NetworkImage(dummyUrl),
            ),
          ),
        )
      ],
    ));
  }
}
