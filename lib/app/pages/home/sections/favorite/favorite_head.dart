import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/gs3_constants.dart';
import '../../../../core/ui/styles/text_styles.dart';

class FavoriteHead extends StatelessWidget {
  const FavoriteHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(23, 22, 20, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Meus favoritos',
            style: context.textStyles.textBold
                .copyWith(fontSize: 14, color: const Color(0XFF1A1A1A)),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Personalizar',
                style: context.textStyles.textBold.copyWith(
                  fontSize: 8,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              const SizedBox(width: 4),
              SvgPicture.asset(
                ImageConst.personalize,
                height: 18,
                width: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
