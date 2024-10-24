import 'package:flutter/material.dart';
import 'package:ishow_clone/core/widgets/Drawer/Common/common_custom_drawer_item.dart';
import 'package:ishow_clone/core/models/custom_drawer_item_model.dart';
import 'package:ishow_clone/core/utils/app_images.dart';
import 'package:ishow_clone/core/widgets/Drawer/variables.dart';

class DesktopCustomDrawerItemsList extends StatefulWidget {
  const DesktopCustomDrawerItemsList({
    super.key,
  });

  @override
  State<DesktopCustomDrawerItemsList> createState() =>
      _DesktopCustomDrawerItemsListState();
}

class _DesktopCustomDrawerItemsListState
    extends State<DesktopCustomDrawerItemsList> {
  final List<CustomDrawerItemModel> items = const [
    CustomDrawerItemModel(
      image: Assets.imagesHome,
      title: 'Home',
    ),
    CustomDrawerItemModel(
      image: Assets.imagesHistory,
      title: 'History',
    ),
    CustomDrawerItemModel(
      image: Assets.imagesFavourite,
      title: 'Favorites',
    ),
    CustomDrawerItemModel(
      image: Assets.imagesContent,
      title: 'My Content',
    ),
    CustomDrawerItemModel(
      image: Assets.imagesFeedback,
      title: 'Feedback',
    ),
    CustomDrawerItemModel(
      image: Assets.imagesSettings,
      title: 'Settings',
    ),
    CustomDrawerItemModel(
      image: Assets.imagesShare,
      title: 'Get Free TV',
    ),
    CustomDrawerItemModel(
      image: Assets.imagesLogout,
      title: 'Logout',
    ),
  ];
  // int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return CommonCustomDrawerItem(
          customDrawerItemModel: items[index],
          isActive: currentIndex == index,
          onPressed: () {
            setState(
              () {
                currentIndex = index;
              },
            );
          },
        );
      }),
    );
  }
}
