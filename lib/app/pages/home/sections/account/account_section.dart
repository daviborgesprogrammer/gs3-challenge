import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'account_tile.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 140,
          autoPlay: false,
          enableInfiniteScroll: false,
          initialPage: 0,
        ),
        itemCount: 15,
        itemBuilder: (
          BuildContext context,
          int itemIndex,
          int pageViewIndex,
        ) =>
            const AccountTile(),
      ),
    );
  }
}
