import 'package:flutter/material.dart';

import '../home_controller.dart';
import 'sections/account/account_section.dart';
import 'sections/divider_section.dart';
import 'sections/latest_releases/latest_releases_section.dart';
import 'widgets/appbar_home.dart';
import 'widgets/background_gradient.dart';
import 'sections/favorite/my_favorite_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await controller.fetchData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundGradient(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBarHome(context),
          body: Column(
            children: [
              AccountSection(controller),
              const DividerSection(),
              MyFavoriteSection(controller),
              const DividerSection(),
              Expanded(child: LatestReleasesSection(controller)),
            ],
          ),
        ),
      ],
    );
  }
}
