import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:ishow_clone/core/widgets/App%20Bar/Other%20Platforms/custom_app_bar.dart';

class HomeMobileLayout extends StatelessWidget {
  const HomeMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
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
