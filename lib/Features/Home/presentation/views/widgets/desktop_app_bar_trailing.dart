import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom_search_text_field.dart';
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
        // ignore: prefer_const_constructors
        SizedBox(
          width: 8,
        ),
        const CustomSearchTextField(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            width: 25,
            height: 25,
            color: Colors.white,
            Assets.imagesNotification,
          ),
        ),
        IconButton(
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
