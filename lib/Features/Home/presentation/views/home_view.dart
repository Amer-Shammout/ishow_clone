import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom_drawer.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_desktop_layout.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_mobile_layout.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_tablet_layout.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/widgets/adaptive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: AdaptiveLayout(
        // ignore: prefer_const_constructors
        mobileLayout: (context) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: const HomeMobileLayout(),
        ),
        tabletLayout: (context) => const HomeTabletLayout(),
        desktopLayout: (context) => const HomeDesktopLayout(),
      ),
    );
  }
}
