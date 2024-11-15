import 'package:flutter/material.dart';

import 'favorite_head.dart';
import 'favorite_list.dart';

class MyFavoriteSection extends StatelessWidget {
  const MyFavoriteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FavoriteHead(),
        FavoriteList(),
      ],
    );
  }
}
