import 'package:flutter/material.dart';

import '../../../../core/ui/styles/text_styles.dart';
import '../../../home_controller.dart';
import 'purchasing_tile.dart';
import 'shimmer_list.dart';

class LatestReleaseList extends StatelessWidget {
  final HomeController controller;
  const LatestReleaseList(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable:
          Listenable.merge([controller.stateAccount, controller.releaseList]),
      builder: (context, _) {
        return controller.stateAccount.value == AccountState.loading
            ? const ShimmerList()
            : ListView(
                children: controller.releaseList.value.entries.map(
                  (entry) {
                    final releases = entry.value['releases'];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text(
                            entry.value['label'],
                            style: context.textStyles.textBold.copyWith(
                              fontSize: 12,
                              color: const Color(0XFF2890CF),
                            ),
                          ),
                        ),
                        ...releases.map(
                          (release) {
                            return PurchasingTile(release);
                          },
                        ),
                      ],
                    );
                  },
                ).toList(),
              );
      },
    );
  }
}
