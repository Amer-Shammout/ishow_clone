import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/data/channels_data.dart';
import 'package:ishow_clone/Features/Home/data/series_data.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/banners%20slider/banners_page_view.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item%20list%20view%20section/custom_items_list_view_section.dart';
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
              SliverToBoxAdapter(
                child: BannersPageView(),
              ),
               SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomItemsListViewSection(title: "Channels",items: channels,),
              ),
               SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomItemsListViewSection(
                  title: "Series",
                  items: seriesTypes,
                ),
              ),
             SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}