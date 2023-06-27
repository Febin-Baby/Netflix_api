import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/widgets/searchtittle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const imageUrl =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAVNxyegyxSKAZ2TA7zJnSE-AzlN3fG9n-vw&usqp=CAU';

class searcjhPage extends StatelessWidget {
  const searcjhPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtittle('Top Searches'),
        kheigh,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const topSearchlistTile();
            },
            separatorBuilder: (context, index) {
              return kheigh;
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }


}

class topSearchlistTile extends StatelessWidget {
  const topSearchlistTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screeWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screeWidth * .35,
          height: 70,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        kwidth,
       const Expanded(
          child: Text(
            'Movie name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
       const CircleAvatar(
          backgroundColor: kWhite,
          radius: 25,
          child: CircleAvatar( 
            backgroundColor: scaffback,
          radius: 23,
          child: Icon(CupertinoIcons.play_fill,color: kWhite,),),
        )
      ],
    );
  }
}
