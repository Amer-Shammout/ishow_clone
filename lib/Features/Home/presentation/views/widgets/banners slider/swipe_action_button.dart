import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/constants.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              swipeToPreviousBanner();
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
              swipeToNextBanner();
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

  void swipeToPreviousBanner() {
    pageController.previousPage(
      duration: const Duration(
        milliseconds: 500,
      ),
      curve: Curves.easeInOut,
    );
  }

  void swipeToNextBanner() {
    pageController.nextPage(
      duration: const Duration(
        milliseconds: 500,
      ),
      curve: Curves.easeInOut,
    );
  }
}
