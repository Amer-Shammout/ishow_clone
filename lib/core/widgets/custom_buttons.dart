import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({super.key, required this.title, required this.onPressed});

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: AppStyles.style16Regular(context),
      ),
    );
  }
}
