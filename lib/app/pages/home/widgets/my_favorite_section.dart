import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/image_const.dart';
import '../../../core/ui/styles/text_styles.dart';

class MyFavoriteSection extends StatelessWidget {
  const MyFavoriteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Meus favoritos',
                style: context.textStyles.textBold
                    .copyWith(color: const Color(0XFF1A1A1A)),
              ),
              Row(
                children: [
                  Text(
                    'Personalizar',
                    style: context.textStyles.textBold.copyWith(
                      fontSize: 8,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(width: 4),
                  SvgPicture.asset(ImageConst.personalize),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
