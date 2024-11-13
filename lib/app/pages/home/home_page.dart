import 'package:flutter/material.dart';

import 'widgets/account_tile.dart';
import 'widgets/appbar_home.dart';
import 'widgets/background_gradient.dart';

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
              Padding(
                padding: EdgeInsets.fromLTRB(17, 13, 0, 16),
                child: AccountTile(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
