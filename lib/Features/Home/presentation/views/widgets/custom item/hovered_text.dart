import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class HoveredText extends StatelessWidget {
  const HoveredText({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
        title,
        style: AppStyles.style15Regular(context),
      );
  }
}