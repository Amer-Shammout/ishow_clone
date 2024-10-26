import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom_item_overlay.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom_item_state.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom_item_title.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.onHover,
  });

  final bool onHover;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              alignment: Alignment.topLeft,
              width: 130,
              height: 175,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.imagesSport1,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: onHover
                  ? const CustomItemOverlay()
                  : null,
            ),
            const CustomItemTitle(),
          ],
        ),
        const Positioned(
          left: 8,
          top: 8,
          child: CustomItemState(),
        ),
      ],
    );
  }
}