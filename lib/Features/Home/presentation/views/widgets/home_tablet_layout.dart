import 'package:flutter/material.dart';
import 'package:ishow_clone/core/widgets/App%20Bar/Other%20Platforms/custom_app_bar.dart';

class HomeTabletLayout extends StatelessWidget {
  const HomeTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
      ],
    );
  }
}