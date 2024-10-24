import 'package:flutter/material.dart';
import 'package:ishow_clone/core/widgets/Drawer/Common/custom_drawer_item.dart';
import 'package:ishow_clone/core/models/custom_drawer_item_model.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class CustomDrawerItemsList extends StatefulWidget {
  const CustomDrawerItemsList({
    super.key,
  });

  @override
  State<CustomDrawerItemsList> createState() => _CustomDrawerItemsListState();
}

class _CustomDrawerItemsListState extends State<CustomDrawerItemsList> {
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
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return CustomDrawerItem(
          customDrawerItemModel: items[index],
          isActive: currentIndex == index,
          onPressed: () {
            setState(() {
              currentIndex = index;
            });
          },
        );
      }),
    );
  }
}
