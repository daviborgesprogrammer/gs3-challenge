import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/image_const.dart';
import '../../../core/ui/styles/text_styles.dart';

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
                              secretDots(),
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
          const SizedBox(height: 14.51),
          const Divider(height: 1, color: Color(0XFF3660A1)),
          const SizedBox(height: 6.49),
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

Widget secretDots() {
  return const Row(
    children: [
      Icon(
        Icons.circle,
        color: Colors.white,
        size: 6.25,
      ),
      SizedBox(width: 2.79),
      Icon(
        Icons.circle,
        color: Colors.white,
        size: 6.25,
      ),
      SizedBox(width: 2.79),
      Icon(
        Icons.circle,
        color: Colors.white,
        size: 6.25,
      ),
      SizedBox(width: 2.79),
      Icon(
        Icons.circle,
        color: Colors.white,
        size: 6.25,
      ),
    ],
  );
}
