import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class UnHoveredText extends StatelessWidget {
  const UnHoveredText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      title,
      style: AppStyles.style15Regular(context),
    );
  }
}
