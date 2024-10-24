import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/core/models/custom_drawer_item_model.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key,
      required this.onPressed,
      required this.isActive,
      required this.customDrawerItemModel});

  final VoidCallback onPressed;
  final bool isActive;
  final CustomDrawerItemModel customDrawerItemModel;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: onPressed,
      height: 60,
      color: isActive
          ? Color(
              0xff253d50,
            )
          : Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          customDrawerItemModel.title == 'Logout'
              ? SvgPicture.asset(
                color: Colors.white,
                  customDrawerItemModel.image,
                  width: 24,
                  height: 20,
                )
              : Image.asset(
                  customDrawerItemModel.image,
                  width: 24,
                  height: 24,
                ),
          const SizedBox(
            width: 20,
          ),
          Text(
            customDrawerItemModel.title,
            style: AppStyles.style16Regular(context),
          ),
        ],
      ),
    );
  }
}
