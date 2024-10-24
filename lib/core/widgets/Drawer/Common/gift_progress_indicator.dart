import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class GiftProgressIndicator extends StatelessWidget {
  const GiftProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Image.asset(
              Assets.imagesGiftProgressIndicatorItem,
            ),
          );
        },
      ),
    );
  }
}