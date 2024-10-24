import 'package:flutter/material.dart';
import 'package:ishow_clone/core/widgets/Drawer/Common/custom_drawer_items_list.dart';
import 'package:ishow_clone/core/widgets/Drawer/Common/gift_dialog.dart';
import 'package:ishow_clone/core/widgets/Drawer/Common/user_profile_tile.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class DesktopCustomDrawer extends StatelessWidget {
  const DesktopCustomDrawer({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      width: 318,
      height: double.infinity,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(
            child: Image.asset(
              width: 100,
              height: 27.3,
              Assets.imagesDrawerLogo,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          const SliverToBoxAdapter(
            child: UserProfile(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 4,
            ),
          ),
          const SliverToBoxAdapter(
            child: GiftDialog(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 4,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomDrawerItemsList(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}