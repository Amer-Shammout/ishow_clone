import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/data/models/custom_item_model.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_item.dart';

class CustomAnimatedItem extends StatefulWidget {
  const CustomAnimatedItem({super.key, required this.itemModel});

  final CustomItemModel itemModel;

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
        child: CustomItem(onHover: onHover , itemModel : widget.itemModel),
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