import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class UnHoveredText extends StatelessWidget {
  const UnHoveredText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        "Sport 1 ssssssssssssssssssssss",
        style: AppStyles.style15Regular(context),
      );
  }
}