import 'package:flutter/material.dart';

import '../../../../core/ui/styles/text_styles.dart';
import 'purchasing_tile.dart';

class LatestReleaseList extends StatelessWidget {
  const LatestReleaseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            'Hoje, 05 Set',
            style: context.textStyles.textBold
                .copyWith(fontSize: 12, color: const Color(0XFF2890CF)),
          ),
        ),
        const PurchasingTile(),
        const PurchasingTile(),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            '03 Set',
            style: context.textStyles.textBold
                .copyWith(fontSize: 12, color: const Color(0XFF2890CF)),
          ),
        ),
        const PurchasingTile(),
        const PurchasingTile(),
      ],
    );
  }
}
