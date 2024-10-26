import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:ishow_clone/core/widgets/App%20Bar/Desktop/desktop_app_bar.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopAppBar(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              HomeViewBody(),
            ],
          ),
        ),
      ],
    );
  }
}
