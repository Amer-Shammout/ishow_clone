import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class TheContentExpandableTileItem extends StatelessWidget {
  const TheContentExpandableTileItem(
      {super.key,
      required this.title,
      required this.isActive,
      required this.onPressed});

  final String title;
  final bool isActive;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: onPressed,
      height: 60,
      color: isActive
          ? const Color(
              0xff253d50,
            )
          : Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: AppStyles.style16Regular(context),
          ),
        ],
      ),
    );
  }
}
