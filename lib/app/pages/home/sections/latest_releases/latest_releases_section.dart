import 'package:flutter/material.dart';

import '../../../home_controller.dart';
import 'latest_release_list.dart';
import 'latest_releases_head.dart';

class LatestReleasesSection extends StatelessWidget {
  final HomeController controller;
  const LatestReleasesSection(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LatestReleasesHead(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: LatestReleaseList(controller),
          ),
        ),
      ],
    );
  }
}
