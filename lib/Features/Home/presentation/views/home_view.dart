import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/size_config.dart';
import 'package:ishow_clone/core/widgets/Drawer/Desktop/desktop_custom_drawer.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_desktop_layout.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_mobile_layout.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_tablet_layout.dart';
import 'package:ishow_clone/core/widgets/Drawer/Other%20Platforms/custom_drawer.dart';
import 'package:ishow_clone/core/widgets/adaptive_layout.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: desktopOrOtherPlatformsDrawer(context),
      body: AdaptiveLayout(
        mobileLayout: (context) => const HomeMobileLayout(),
        tabletLayout: (context) => const HomeTabletLayout(),
        desktopLayout: (context) => const HomeDesktopLayout(),
      ),
    );
  }

  StatelessWidget desktopOrOtherPlatformsDrawer(BuildContext context) {
    return MediaQuery.sizeOf(context).width > SizeConfig.desktop
        ? const DesktopCustomDrawer()
        : const CustomDrawer();
  }
}
