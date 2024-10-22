import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_desktop_layout.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_mobile_layout.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_tablet_layout.dart';
import 'package:ishow_clone/core/widgets/adaptive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const HomeMobileLayout(),
      tabletLayout: (context) => const HomeTabletLayout(),
      desktopLayout: (context) => const HomeDesktopLayout(),
    );
  }
}
