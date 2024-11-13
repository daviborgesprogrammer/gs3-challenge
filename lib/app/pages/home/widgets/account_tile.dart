import 'package:flutter/material.dart';

import '../../../core/ui/styles/text_styles.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ),
          const Divider(height: 1, color: Color(0XFF3660A1)),
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
