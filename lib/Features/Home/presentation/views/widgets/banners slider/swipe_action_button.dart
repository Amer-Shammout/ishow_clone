import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class SwipeActionButton extends StatelessWidget {
  const SwipeActionButton({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              pageController.previousPage(
                duration: const Duration(
                  milliseconds: 300,
                ),
                curve: Curves.easeInExpo,
              );
            },
            icon: SvgPicture.asset(
              color: Colors.white.withOpacity(.9),
              Assets.imagesLeftArrow,
              width: 40,
              height: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(
                  milliseconds: 300,
                ),
                curve: Curves.linear,
              );
            },
            icon: SvgPicture.asset(
              color: Colors.white.withOpacity(.9),
              Assets.imagesRightArrow,
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
