import 'package:flutter/material.dart';

import '../../../../core/constants/image_const.dart';
import '../../../home_controller.dart';
import 'favorite_tile.dart';
import 'shimmer_favorite.dart';

class FavoriteList extends StatelessWidget {
  final HomeController controller;
  const FavoriteList(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      height: 85,
      child: ListenableBuilder(
        listenable: Listenable.merge(
          [controller.stateAccount, controller.favoriteList],
        ),
        builder: (context, _) {
          return controller.stateAccount.value == AccountState.loading
              ? const ShimmerFavorite()
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.favoriteList.value.length,
                  itemBuilder: (context, index) {
                    final int item = controller.favoriteList.value[index];
                    return Row(
                      children: [
                        const SizedBox(width: 30),
                        FavoriteTile(
                          iconUrl: switch (item) {
                            1 => ImageConst.virtualCard,
                            2 => ImageConst.additionalCard,
                            3 => ImageConst.insurance,
                            4 => ImageConst.packSms,
                            5 => ImageConst.vipRoom,
                            _ => ImageConst.emptyIcon,
                          },
                          label: switch (item) {
                            1 => 'Cartão virtual',
                            2 => 'Cartão adicional',
                            3 => 'Seguros',
                            4 => 'Pacote SMS',
                            5 => 'Sala VIP',
                            _ => '',
                          },
                        ),
                        if (index == controller.favoriteList.value.length - 1)
                          const SizedBox(width: 15),
                      ],
                    );
                  },
                );
        },
      ),
    );
  }
}
