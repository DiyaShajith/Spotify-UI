import 'package:flutter/material.dart';

class Libraryview extends StatefulWidget {
  const Libraryview({super.key});

  @override
  State<Libraryview> createState() => _LibraryviewState();
}

class _LibraryviewState extends State<Libraryview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.purple,
                  child: Text(
                    "D",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Your Library",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Playlist",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Artist",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Albums",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Podcast",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(
                  Icons.mobiledata_off,
                  color: Colors.white,
                ),SizedBox(width: 15,),
                Text(
                  "Recents",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),Spacer(),
                Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
