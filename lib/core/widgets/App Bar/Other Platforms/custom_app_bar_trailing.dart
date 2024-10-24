import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class CustomAppBarTrailing extends StatelessWidget {
  const CustomAppBarTrailing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            width: 30,
            height: 30,
            Assets.imagesPresons,
          ),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          iconSize: 25,
          onPressed: () {},
          icon: SvgPicture.asset(
            width: 25,
            height: 25,
            Assets.imagesSearch,
            color: Colors.white,
          ),
        ),
        IconButton(
          iconSize: 25,
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: SvgPicture.asset(
            width: 25,
            height: 25,
            color: Colors.white,
            Assets.imagesNotification,
          ),
        ),
        IconButton(
          iconSize: 25,
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Image.asset(
            width: 25,
            height: 25,
            Assets.imagesWatch,
          ),
        ),
      ],
    );
  }
}
