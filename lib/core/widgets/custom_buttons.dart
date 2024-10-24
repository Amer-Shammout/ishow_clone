import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.isActive});

  final String title;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          overlayColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppStyles.style16Regular(context).copyWith(
            decoration: isActive ? TextDecoration.underline : TextDecoration.none,
          ),
          
        ),
      ),
    );
  }
}
