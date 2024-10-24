import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          width: 80,
          height: 80,
          Assets.imagesAvatar,
        ),
        Image.asset(
          width: 30,
          height: 30,
          Assets.imagesCamera,
        ),
      ],
    );
  }
}