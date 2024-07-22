import 'package:flutter/material.dart';
import 'package:spotify/view/home/widgets/jumpbackin.dart';
import 'package:spotify/view/home/widgets/playlist.dart';
import 'package:spotify/view/home/widgets/release.dart';
import 'package:spotify/view/home/widgets/songlist.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple[300],
                  ),
                  child: Text(
                    "D",
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ),
               SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: theme.colorScheme.primary,
                  ),
                  child: Text(
                    "All",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: theme.colorScheme.onSurface.withOpacity(.3),
                  ),
                  child: Text(
                    "Music",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: theme.colorScheme.onSurface.withOpacity(.3),
                  ),
                  child: Text(
                    "Podcasts",
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            const HomTopSongListtile(),
            SizedBox(height: 10,),
            Text(
              "Jump back in",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 310,
              child: JumpBackIn(),
            ),
            Text(
              "New releases",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 310,
              child: Release(),
            ),
            Text(
              "Recently played",
              style: theme.textTheme.headlineMedium!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),SizedBox(height: 5,),
            const SizedBox(
              height: 165,
              child: RecentlyPlayed(),
            ),
           
          ],
        ),
      ),
    );
  }
}
