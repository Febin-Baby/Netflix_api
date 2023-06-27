
import 'package:flutter/material.dart';

ValueNotifier<int> changebottomNav = ValueNotifier(0);

class bottomNaBar extends StatelessWidget {
  bottomNaBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, index, child) {
        return BottomNavigationBar(
          elevation: 0,
          currentIndex: index,
          onTap: (value) {
            changebottomNav.value = value;
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections), label: 'New Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.image_outlined), label: 'Laugh'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
          ],
        );
      },
      valueListenable: changebottomNav,
    );
  }
}
