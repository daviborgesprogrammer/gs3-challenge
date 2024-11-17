import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../models/account.dart';
import '../../../home_controller.dart';
import 'account_tile.dart';
import 'shimmer_card.dart';

class AccountSection extends StatelessWidget {
  final HomeController controller;
  const AccountSection(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: ListenableBuilder(
        listenable:
            Listenable.merge([controller.state, controller.accountList]),
        builder: (context, _) {
          return controller.state.value == HomeState.loading
              ? const ShimmerCard()
              : CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 140,
                    autoPlay: false,
                    enableInfiniteScroll: false,
                    initialPage: 0,
                    disableCenter: true,
                    onPageChanged: (index, _) {
                      controller.changeAccount(
                        controller.accountList.value[index].id ?? 0,
                      );
                    },
                  ),
                  itemCount: controller.accountList.value.length,
                  itemBuilder: (
                    BuildContext context,
                    int itemIndex,
                    int pageViewIndex,
                  ) {
                    if (controller.accountList.value.isNotEmpty) {
                      final Account account =
                          controller.accountList.value[itemIndex];
                      return AccountTile(
                        account: account,
                        isLast: itemIndex ==
                            controller.accountList.value.length - 1,
                      );
                    }
                    return const ShimmerCard();
                  },
                );
        },
      ),
    );
  }
}
