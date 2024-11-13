import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/image_const.dart';
import '../../../core/ui/styles/colors_app.dart';
import '../../../core/ui/styles/text_styles.dart';

class AppBarHome extends AppBar {
  AppBarHome(BuildContext context, {super.key})
      : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: RichText(
            text: TextSpan(
              text: 'Olá, ',
              style: context.textStyles.textRegular.copyWith(
                fontSize: 17,
              ),
              children: [
                TextSpan(text: 'Cliente', style: context.textStyles.textBold),
              ],
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              color: ColorsApp.i.divider,
              height: 1,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(ImageConst.chat),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(ImageConst.notification),
            ),
          ],
        );
}
