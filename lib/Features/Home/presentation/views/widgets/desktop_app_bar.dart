import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/desktop_app_bar_leading.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/desktop_app_bar_trailing.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: kHorizontalPadding,),
          child: Row(
            children: [
              const DesktopAppBarLeading(),
              const Spacer(),
              Image.asset(
                Assets.imagesLogo2,
                width: 100,
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
