import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../core/ui/styles/colors_app.dart';
import 'widgets/account_tile.dart';
import 'widgets/appbar_home.dart';
import 'widgets/background_gradient.dart';
import 'widgets/my_favorite_section.dart';

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
          // body: ListView(
          //   // physics: CarouselScrollPhysics(),
          //   children: [AccountTile()],
          // ),
          body: Column(
            children: [
              Container(
                height: 200,
                // padding: const EdgeInsets.fromLTRB(17, 13, 0, 16),
                child: CarouselSlider.builder(
                  // options: CarouselOptions(height: 400.0),
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
                // child: AccountTile(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Divider(
                  color: ColorsApp.i.divider,
                  height: 1.0,
                ),
              ),
              MyFavoriteSection(),
            ],
          ),
        ),
      ],
    );
  }
}
