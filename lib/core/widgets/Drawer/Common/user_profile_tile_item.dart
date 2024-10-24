import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class UserProfileItem extends StatelessWidget {
  const UserProfileItem({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.style14Regular(context),
        ),
        SizedBox(
          width: 100,
          child: Text(
            subTitle,
            style: AppStyles.style14Regular(context).copyWith(
              color: Colors.white.withOpacity(.7),
            ),
          ),
        ),
      ],
    );
  }
}