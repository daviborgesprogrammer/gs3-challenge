import 'package:flutter/material.dart';

import '../../../home_controller.dart';
import 'favorite_head.dart';
import 'favorite_list.dart';

class MyFavoriteSection extends StatelessWidget {
  final HomeController controller;
  const MyFavoriteSection(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FavoriteHead(),
        FavoriteList(controller),
      ],
    );
  }
}
