import 'package:bloc_learn/API/search/func.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/searchPage/screen_search.dart';
import 'package:bloc_learn/presentation/widgets/searchtittle.dart';
import 'package:flutter/material.dart';

class SearchResultWidget extends StatefulWidget {
  const SearchResultWidget({super.key});

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchtittle('Movies & TV'),
        kheigh,
        Expanded(
          child: FutureBuilder(
            future: getSearchResul(text.text.trim()),
            builder: (context, snapshot) {
              return GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 220,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return snapshot.hasData
                      ? Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      '$img${snapshot.data?[index].posterPath}'),
                                  fit: BoxFit.cover)),
                        )
                      : const Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
