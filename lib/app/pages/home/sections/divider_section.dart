import 'package:flutter/material.dart';

import '../../../core/ui/styles/colors_app.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Divider(
        thickness: 1.0,
        height: 1.0,
        color: ColorsApp.i.divider,
      ),
    );
  }
}
