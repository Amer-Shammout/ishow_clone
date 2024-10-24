import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/core/widgets/App%20Bar/Other%20Platforms/custom_app_bar_trailing.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';
import 'package:ishow_clone/core/utils/functions/open_drawer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 2,
            top: 8.0,
            right: kHorizontalPadding,
            left: kHorizontalPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: openDrawer,
                icon: SvgPicture.asset(
                  color: Colors.white,
                  Assets.imagesMenu,
                ),
              ),
              Image.asset(
                Assets.imagesIshowLogo,
              ),
              const CustomAppBarTrailing(),
            ],
          ),
        ),
        const Divider(
          height: 0,
          color: kSecondaryColor,
        ),
      ],
    );
  }
}