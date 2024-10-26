import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom_item.dart';
import 'package:ishow_clone/constants.dart';

class CustomAnimatedItem extends StatefulWidget {
  const CustomAnimatedItem({super.key});

  @override
  State<CustomAnimatedItem> createState() => _CustomAnimatedItemState();
}

class _CustomAnimatedItemState extends State<CustomAnimatedItem> {
  double scale = 1;

  bool onHover = false;
  bool onTextHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: itemHoverStart,
      onExit: itemHoverEnd,
      child: AnimatedScale(
        curve: Curves.ease,
        duration: const Duration(milliseconds: 300),
        scale: scale,
        child: CustomItem(onHover: onHover),
      ),
    );
  }

  void itemHoverEnd(event) {
    onHover = false;
    scale = 1;
    setState(() {});
  }

  void itemHoverStart(event) {
    onHover = true;
    scale = 1.05;
    setState(() {});
  }
}





class CustomList extends StatelessWidget {
  const CustomList({super.key});

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
