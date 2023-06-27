import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/searchPage/widgets/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                backgroundColor: kgrey.withOpacity(.3),
                prefixIcon: const Icon(
                  Icons.search,
                  color: kgrey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgrey,
                ),
                style: const TextStyle(color: kWhite),
              ),
              kheigh,
            //const Expanded(child:  searcjhPage(),),
             Expanded(child: SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
