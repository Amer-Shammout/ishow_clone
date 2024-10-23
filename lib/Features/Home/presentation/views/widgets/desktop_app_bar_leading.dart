import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/core/utils/app_images.dart';
import 'package:ishow_clone/core/widgets/custom_buttons.dart';

class DesktopAppBarLeading extends StatelessWidget {
  const DesktopAppBarLeading({super.key});

  static const List<String> buttons = [
    'Channels',
    'Series',
    'Movies',
    'Clips',
    'TV Programs',
    'Bundles',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            color: Colors.white,
            Assets.imagesMenu,
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            color: Color(
              0xff253d50,
            ),
          ),
        ),
        Row(
          children: List.generate(
            buttons.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CustomAppBarButton(
                  onPressed: () {},
                  title: buttons[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
