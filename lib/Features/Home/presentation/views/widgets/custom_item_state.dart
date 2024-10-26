import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class CustomItemState extends StatelessWidget {
  const CustomItemState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.imagesHot,
      width: 40,
      height: 14,
    );
  }
}