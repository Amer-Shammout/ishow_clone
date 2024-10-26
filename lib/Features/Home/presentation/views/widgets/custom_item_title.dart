import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/hovered_text.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/un_hovered_text.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

class CustomItemTitle extends StatefulWidget {
  const CustomItemTitle({super.key});

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
            child: onTextHover ? const HoveredText() : const UnHoveredText(),
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
