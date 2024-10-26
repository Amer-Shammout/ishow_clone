import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_item.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class CustomItemOverlay extends StatelessWidget {
  const CustomItemOverlay({super.key, this.desc, required this.category});

  final String? desc;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(16),
      width: getWidth(category, MediaQuery.sizeOf(context).width),
      height: getHeight(category, MediaQuery.sizeOf(context).width),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        color: Colors.black.withOpacity(
          .6,
        ),
      ),
      child: Center(
        child: Text(
          textDirection: TextDirection.rtl,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          desc ?? '',
          style: AppStyles.style16Regular(context),
        ),
      ),
    );
  }
}
