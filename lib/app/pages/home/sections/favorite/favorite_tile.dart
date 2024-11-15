import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/ui/styles/text_styles.dart';

class FavoriteTile extends StatelessWidget {
  final String label;
  final String iconUrl;
  const FavoriteTile({super.key, required this.label, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
              color: const Color(0X33E5E5E5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SizedBox(
              height: 30,
              width: 30,
              child: SvgPicture.asset(
                iconUrl,
                fit: BoxFit.none,
                width: 16,
                height: 16,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: context.textStyles.textRegular
                .copyWith(color: const Color(0XFF1A1A1A), fontSize: 10),
          ),
        ],
      ),
    );
  }
}
