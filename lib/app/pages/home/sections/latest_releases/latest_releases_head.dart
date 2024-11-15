import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/image_const.dart';
import '../../../../core/ui/styles/text_styles.dart';

class LatestReleasesHead extends StatelessWidget {
  const LatestReleasesHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(22, 20, 25.15, 11.73),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Últimos lançamentos',
            style: context.textStyles.textBold.copyWith(
              color: const Color(0XFF1A1A1A),
              fontSize: 14,
            ),
          ),
          Row(
            children: [
              Text(
                'Ver todos',
                style: context.textStyles.textBold.copyWith(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 8,
                ),
              ),
              const SizedBox(width: 9),
              SvgPicture.asset(ImageConst.arrowForward),
            ],
          ),
        ],
      ),
    );
  }
}
