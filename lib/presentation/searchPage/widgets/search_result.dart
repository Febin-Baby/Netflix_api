import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/widgets/searchtittle.dart';
import 'package:flutter/material.dart';

const dummyUrl =
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT72K7rrhibF5FchnPc31OuHydO-yYDU0MMhg&usqp=CAU';

class SearchResultWidget extends StatelessWidget {
 const SearchResultWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtittle('Movies and TV'),
        kheigh,
        Expanded(
          child: GridView.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 1 / 2,
            crossAxisCount: 3,
            shrinkWrap: true,
            children: List.generate(
              20,
              (index) {
                return const mainCard();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class mainCard extends StatelessWidget {
  const mainCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(dummyUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
