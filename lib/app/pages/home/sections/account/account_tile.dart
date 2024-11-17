import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/gs3_constants.dart';
import '../../../../core/extensions/formatter_extensions.dart';
import '../../../../core/ui/styles/colors_app.dart';
import '../../../../core/ui/styles/text_styles.dart';
import '../../../../models/account.dart';
import 'secret_dots.dart';

class AccountTile extends StatefulWidget {
  final Account account;
  final bool isLast;
  const AccountTile({super.key, required this.account, required this.isLast});

  @override
  State<AccountTile> createState() => _AccountTileState();
}

class _AccountTileState extends State<AccountTile> {
  ValueNotifier<bool> showNumber = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 301,
      margin: EdgeInsets.only(right: widget.isLast ? 0 : 15.0),
      padding: const EdgeInsets.symmetric(vertical: 13),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            widget.account.colorsCard?.begin?.hexToColor ??
                Colors.grey.shade400,
            widget.account.colorsCard?.end?.hexToColor ?? Colors.grey.shade700,
          ],
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
                      color: ColorsApp.i.grey1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ValueListenableBuilder(
                            valueListenable: showNumber,
                            builder: (_, show, __) => Visibility(
                              visible: show,
                              replacement: Row(
                                children: [
                                  const SecretDots(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 6.12),
                                    child: Text(
                                      widget.account.number?.substring(
                                            widget.account.number!.length - 4,
                                            widget.account.number!.length,
                                          ) ??
                                          '',
                                      style: context.textStyles.textRegular
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              child: Text(
                                widget.account.number ?? '',
                                style: context.textStyles.textRegular
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                          Text(
                            widget.account.name ?? '',
                            style: context.textStyles.textRegular
                                .copyWith(fontSize: 14, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    showNumber.value = !showNumber.value;
                  },
                  child: SvgPicture.asset(ImageConst.eye),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14.51, bottom: 6.49),
            child: Divider(
              height: 1,
              color: widget.account.colorsCard!.line!.hexToColor,
              thickness: 1.0,
            ),
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
                      widget.account.limit!.currencyPTBR,
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
                      '${widget.account.shoppingDay}',
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
