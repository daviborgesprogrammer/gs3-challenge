import 'package:flutter/material.dart';

import '../../../core/ui/styles/colors_app.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0, 0.45],
          colors: [ColorsApp.i.bgPrimary, ColorsApp.i.bgSecondary],
        ),
      ),
    );
  }
}
