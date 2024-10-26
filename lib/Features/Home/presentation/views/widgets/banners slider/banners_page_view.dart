import 'dart:async';

import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/banners%20slider/banners_page_view_item.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/banners%20slider/swipe_action_button.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

late Timer _timer;

class BannersPageView extends StatefulWidget {
  const BannersPageView({
    super.key,
  });

  @override
  State<BannersPageView> createState() => _BannersPageViewState();
}

class _BannersPageViewState extends State<BannersPageView> {
  final List<String> images = [
    Assets.imagesBanner1,
    Assets.imagesBanner2,
    Assets.imagesBanner3,
    Assets.imagesBanner4,
    Assets.imagesBanner5,
  ];

  late PageController _pageController;

  

  @override
  void initState() {
    initializeAndListenToPageController();
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ExpandablePageView.builder(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return BannerPageViewItem(
              image: images[index],
            );
          },
        ),
        SwipeActionButton(
          pageController: _pageController,
        ),
      ],
    );
  }

  void initializeAndListenToPageController() {
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {});
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 6), (timer) {
      if (_pageController.page == images.length - 1) {
        _pageController.animateToPage(
          0,
          duration: const Duration(
            milliseconds: 500,
          ),
          curve: Curves.easeInOut,
        );
      } else {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }
}
