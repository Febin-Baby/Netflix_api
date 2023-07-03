import 'package:bloc_learn/API/search/func.dart';
import 'package:bloc_learn/core/colors/colors.dart';
import 'package:bloc_learn/core/constants.dart';
import 'package:bloc_learn/presentation/searchPage/widgets/search_idle.dart';
import 'package:bloc_learn/presentation/searchPage/widgets/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier searchNotifier=ValueNotifier([]);
TextEditingController text =TextEditingController();

class ScreenSearch extends StatelessWidget {
   ScreenSearch({super.key});

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: searchNotifier,
            builder: (context, value, child) {
              return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CupertinoSearchTextField(
                    onChanged: (value) {
                      getSearchResult(value.trim());
                      searchNotifier.notifyListeners();
                    },
                    focusNode: _focusNode,
                      controller: text,
                      backgroundColor: kgrey.withOpacity(.3),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: kgrey,
                      ),
                      suffixIcon: const Icon(
                        CupertinoIcons.xmark_circle_fill,
                        color: kgrey,
                      ),
                      style: const TextStyle(color: kWhite)),
                  kheigh,
                  (text.text.isNotEmpty)
                      ? const Expanded(child: SearchResultWidget())
                      : const Expanded(child: searcjhPage())
                ],
              ),
            );
            },
          ),
        ),
      ),
    );
  }
}
