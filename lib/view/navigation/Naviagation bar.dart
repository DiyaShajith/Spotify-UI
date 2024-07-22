import 'package:flutter/material.dart';
import 'package:spotify/view/home/homeview.dart';

import '../search/searchbar.dart';

class Naviagationbar extends StatelessWidget {
  const Naviagationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Searchbar(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
          ),label: "Home"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",),
        BottomNavigationBarItem(icon: Icon(Icons.library_add),label: "Library")
      ]),
    );
  }
}
