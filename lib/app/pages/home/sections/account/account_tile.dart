import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/image_const.dart';
import '../../../../core/ui/styles/text_styles.dart';
import 'secret_dots.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301,
      padding: const EdgeInsets.symmetric(vertical: 13),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0XFF2B66BC), Color(0XFF132D55)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56,
                      width: 88,
                      color: const Color(0XFFD9D9D9),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SecretDots(),
                              Padding(
                                padding: const EdgeInsets.only(left: 6.12),
                                child: Text(
                                  '5621',
                                  style: context.textStyles.textRegular
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'GS3 TEC',
                            style: context.textStyles.textRegular
                                .copyWith(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(ImageConst.eye),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 14.51, bottom: 6.49),
            child: Divider(height: 1, color: Color(0XFF3660A1), thickness: 1.0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Limite disponivel',
                      style: context.textStyles.textRegular
                          .copyWith(color: Colors.white, fontSize: 8),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'R\$ 7.867,80',
                      style: context.textStyles.textBold
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Melhor dia de compra',
                      style: context.textStyles.textRegular
                          .copyWith(color: Colors.white, fontSize: 8),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '20',
                      style: context.textStyles.textBold
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
