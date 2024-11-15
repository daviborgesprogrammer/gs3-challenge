import 'package:flutter/material.dart';

import 'latest_release_list.dart';
import 'latest_releases_head.dart';

class LatestReleasesSection extends StatelessWidget {
  const LatestReleasesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LatestReleasesHead(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: LatestReleaseList(),
          ),
        ),
      ],
    );
  }
}
