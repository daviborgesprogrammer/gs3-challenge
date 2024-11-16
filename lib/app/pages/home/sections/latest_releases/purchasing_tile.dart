import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/image_const.dart';
import '../../../../core/extensions/formatter_extensions.dart';
import '../../../../core/ui/styles/text_styles.dart';
import '../../../../models/releases.dart';

class PurchasingTile extends StatelessWidget {
  final Release release;
  const PurchasingTile(this.release, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 13),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0XB3E5E5E5), width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 15.22),
                height: 45.66,
                width: 45.66,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0X33E5E5E5),
                ),
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(
                    release.imageDesc,
                    fit: BoxFit.none,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    release.desc ?? '',
                    style: context.textStyles.textBold
                        .copyWith(fontSize: 12, color: const Color(0XFF212121)),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    release.dateTimeRelease,
                    // '05/09 às 22:35',
                    style: context.textStyles.textRegular
                        .copyWith(fontSize: 10, color: const Color(0XFF69696B)),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                release.amount?.currencyPTBR ?? '',
                style: context.textStyles.textBold
                    .copyWith(fontSize: 12, color: const Color(0XFF212121)),
              ),
              const SizedBox(height: 4),
              Text(
                release.installment! > 0 ? 'em ${release.installment}x' : '',
                style: context.textStyles.textRegular
                    .copyWith(fontSize: 10, color: const Color(0XFF69696B)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
