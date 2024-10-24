import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/core/widgets/App%20Bar/Desktop/custom_search_text_field.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class DesktopAppBarTrailing extends StatelessWidget {
  const DesktopAppBarTrailing({super.key});

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
        const SizedBox(
          width: 8,
        ),
        const CustomSearchTextField(),
        const SizedBox(
          width: 8,
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
