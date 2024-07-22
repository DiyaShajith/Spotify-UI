import 'package:flutter/material.dart';
import 'package:spotify/view/home/homeview.dart';

import '../library/libraryview.dart';
import '../search/searchbar.dart';

class Naviagationbar extends StatefulWidget {
  const Naviagationbar({super.key});

  @override
  State<Naviagationbar> createState() => _NaviagationbarState();
}

class _NaviagationbarState extends State<Naviagationbar> {
  List pages = [HomeView(), Searchview(), Libraryview()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.3),
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add), label: "Library")
          ]),
    );
  }
}
