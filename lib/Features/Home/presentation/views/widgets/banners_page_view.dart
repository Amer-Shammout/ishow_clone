import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/banners_page_view_item.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/swipe_action_button.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

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

  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ExpandablePageView.builder(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return BannerPageViewItem(
              image: images[index],
            );
          },
        ),
        SwipeActionButton(
          pageController: pageController,
        ),
      ],
    );
  }
}
