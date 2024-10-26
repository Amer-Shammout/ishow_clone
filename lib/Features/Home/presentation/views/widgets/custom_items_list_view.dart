import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom_animated_item.dart';
import 'package:ishow_clone/constants.dart';

class CustomItemsListView extends StatelessWidget {
  const CustomItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? kHorizontalPadding : 0,
                right: index == 9 ? kHorizontalPadding : 12),
            child: const CustomAnimatedItem(),
          );
        }),
      ),
    );
  }
}
