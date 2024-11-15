import 'package:flutter/material.dart';

import 'sections/account/account_section.dart';
import 'sections/divider_section.dart';
import 'sections/latest_releases/latest_releases_section.dart';
import 'widgets/appbar_home.dart';
import 'widgets/background_gradient.dart';
import 'sections/favorite/my_favorite_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundGradient(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarHome(context),
          drawer: const Drawer(),
          body: const Column(
            children: [
              AccountSection(),
              DividerSection(),
              MyFavoriteSection(),
              DividerSection(),
              // Expanded(child: LatestReleaseList())
              Expanded(child: LatestReleasesSection()),
            ],
          ),
        ),
      ],
    );
  }
}
