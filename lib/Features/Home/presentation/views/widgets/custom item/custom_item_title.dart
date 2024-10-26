import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/hovered_text.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/un_hovered_text.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class CustomItemTitle extends StatefulWidget {
  const CustomItemTitle(
      {super.key, required this.title, required this.category});

  final String title;
  final String category;

  @override
  State<CustomItemTitle> createState() => _CustomItemTitleState();
}

class _CustomItemTitleState extends State<CustomItemTitle> {
  bool onTextHover = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          Assets.imagesStar,
          color: Colors.white,
          width: 14,
          height: 14,
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 100,
          child: MouseRegion(
            onEnter: textHoverStart,
            onExit: textHoverEnd,
            child: onTextHover
                ? HoveredText(title: widget.title)
                : UnHoveredText(title: widget.title),
          ),
        ),
      ],
    );
  }

  void textHoverEnd(event) {
    onTextHover = false;
    setState(() {});
  }

  void textHoverStart(event) {
    onTextHover = true;
    setState(() {});
  }
}
