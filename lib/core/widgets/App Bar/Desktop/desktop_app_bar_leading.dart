import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ishow_clone/core/utils/app_images.dart';
import 'package:ishow_clone/core/utils/functions/open_drawer.dart';
import 'package:ishow_clone/core/widgets/custom_buttons.dart';

class DesktopAppBarLeading extends StatefulWidget {
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
  State<DesktopAppBarLeading> createState() => _DesktopAppBarLeadingState();
}

class _DesktopAppBarLeadingState extends State<DesktopAppBarLeading> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: openDrawer,
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
        const SizedBox(
          width: 16,
        ),
        Row(
          children: List.generate(
            DesktopAppBarLeading.buttons.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 0),
                child: CustomAppBarButton(
                  isActive: currentIndex == index,
                  onPressed: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  title: DesktopAppBarLeading.buttons[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
