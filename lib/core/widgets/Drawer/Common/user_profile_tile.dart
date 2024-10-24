import 'package:flutter/material.dart';
import 'package:ishow_clone/core/widgets/Drawer/Common/profile_image.dart';
import 'package:ishow_clone/core/widgets/Drawer/Common/user_profile_tile_item.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileImage(),
          SizedBox(
            height: 16,
          ),
          UserProfileItem(
            title: 'User Profile',
            subTitle: '963943153153',
          ),
          SizedBox(
            height: 4,
          ),
          UserProfileItem(
            title: 'Network',
            subTitle: 'Wi-Fi',
          ),
          SizedBox(
            height: 4,
          ),
          UserProfileItem(
            title: 'Payment Method',
            subTitle: 'From phone credit',
          ),
        ],
      ),
    );
  }
}
