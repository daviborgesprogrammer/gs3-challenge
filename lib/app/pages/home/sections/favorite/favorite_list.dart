import 'package:flutter/material.dart';

import '../../../../core/constants/image_const.dart';
import 'favorite_tile.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      height: 85,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(width: 30),
          FavoriteTile(
            iconUrl: ImageConst.virtualCard,
            label: 'Cartão virtual',
          ),
          SizedBox(width: 30),
          FavoriteTile(
            iconUrl: ImageConst.additionalCard,
            label: 'Cartão adicional',
          ),
          SizedBox(width: 30),
          FavoriteTile(
            iconUrl: ImageConst.insurance,
            label: 'Seguros',
          ),
          SizedBox(width: 30),
          FavoriteTile(
            iconUrl: ImageConst.packSms,
            label: 'Pacote SMS',
          ),
          SizedBox(width: 30),
          FavoriteTile(
            iconUrl: ImageConst.vipRoom,
            label: 'Sala VIP',
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
