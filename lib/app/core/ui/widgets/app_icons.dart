import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/image_const.dart';

class AppIcons extends StatelessWidget {
  final double? height;
  final double? width;
  final String? icon;
  final BoxFit? fit;
  const AppIcons({super.key, this.height, this.width, this.icon, this.fit});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 20,
      width: width ?? 20,
      child: SvgPicture.asset(
        icon ?? ImageConst.emptyIcon,
        fit: fit ?? BoxFit.none,
        width: width ?? 24,
        height: height ?? 24,
      ),
    );
  }
}
