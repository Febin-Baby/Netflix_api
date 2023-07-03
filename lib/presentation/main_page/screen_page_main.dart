import 'package:bloc_learn/presentation/downloads/downloads_page.dart';
import 'package:bloc_learn/presentation/homepage/home_page.dart';
import 'package:bloc_learn/presentation/luaghpage/screen_fast_luagh.dart';
import 'package:bloc_learn/presentation/main_page/widgets/botton_nav_widget.dart';
import 'package:bloc_learn/presentation/newHot/new_hot.dart';
import 'package:bloc_learn/presentation/searchPage/screen_search.dart';
import 'package:flutter/material.dart';

class mainPage extends StatelessWidget {
  mainPage({super.key});

  final pages = [
    homepage(),
    newHotpage(),
    screenFastLaugh(),
    ScreenSearch(),
    downloadsPAge(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: changebottomNav,
          builder: (context, value, _) {
            return pages[value];
          },
        ),
      ),
      bottomNavigationBar: bottomNaBar(),
    );
  }
}
