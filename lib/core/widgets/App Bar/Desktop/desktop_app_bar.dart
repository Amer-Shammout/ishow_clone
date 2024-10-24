import 'package:flutter/material.dart';
import 'package:ishow_clone/core/widgets/App%20Bar/Desktop/desktop_app_bar_leading.dart';
import 'package:ishow_clone/core/widgets/App%20Bar/Desktop/desktop_app_bar_trailing.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

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
            children: [
              const DesktopAppBarLeading(),
              const Spacer(),
              Image.asset(
                Assets.imagesIshowLogo,
              ),
              const Spacer(
                flex: 4,
              ),
              const DesktopAppBarTrailing()
            ],
          ),
        ),
        const Divider(
          color: kSecondaryColor,
        )
      ],
    );
  }
}
