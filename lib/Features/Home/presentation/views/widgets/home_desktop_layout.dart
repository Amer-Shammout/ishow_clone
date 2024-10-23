import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/desktop_app_bar.dart';

class HomeDesktopLayout extends StatelessWidget {
  const HomeDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DesktopAppBar()
      ],
    );
  }
}