import 'package:flutter/material.dart';

import 'core/ui/styles/colors_app.dart';
import 'core/ui/styles/text_styles.dart';
import 'pages/home/home_page.dart';

class Gs3App extends StatelessWidget {
  const Gs3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GS3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsApp.i.primary,
          primary: ColorsApp.i.primary,
        ),
        fontFamily: context.textStyles.fontFamily,
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
