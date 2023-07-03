import 'package:bloc_learn/API/relesed/func.dart';
import 'package:bloc_learn/API/south_indian_cinima/func.dart';
import 'package:bloc_learn/API/top_rated/func.dart';
import 'package:bloc_learn/API/trending/func.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/widgets/searchtittle.dart';
import 'package:flutter/material.dart';

class ReleasedTile extends StatelessWidget {
  final String text;
  const ReleasedTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtittle(text),
        kheigh,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getRealeased(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  snapshot.data!.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: kreadius,
                          image: DecorationImage(
                            image: NetworkImage(
                                '$img${snapshot.data?[index].posterPath}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class TrendnfTile extends StatelessWidget {
  final String text;
  const TrendnfTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtittle(text),
        kheigh,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getTrending(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: kreadius,
                          image: DecorationImage(
                            image: NetworkImage(
                                '$img${snapshot.data?[index].posterPath}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class topRated extends StatelessWidget {
  final String text;
  const topRated({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtittle(text),
        kheigh,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getTopRated(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  10,
                  (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: kreadius,
                          image: DecorationImage(
                            image: NetworkImage(
                                '$img${snapshot.data?[index].posterPath}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class topTv extends StatelessWidget {
  final String text;
  const topTv({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtittle(text),
        kheigh,
        LimitedBox(
          maxHeight: 200,
          child: FutureBuilder(
            future: getTv(),
            builder: (context, snapshot) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  snapshot.data!.length,
                  (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: kreadius,
                          image: DecorationImage(
                            image: NetworkImage(
                                '$img${snapshot.data?[index].posterPath}'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
