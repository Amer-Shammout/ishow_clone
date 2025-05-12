import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/data/channels_data.dart';
import 'package:ishow_clone/Features/Home/data/clips_data.dart';
import 'package:ishow_clone/Features/Home/data/movies_data.dart';
import 'package:ishow_clone/Features/Home/data/programs_data.dart';
import 'package:ishow_clone/Features/Home/data/series_data.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/banners%20slider/banners_page_view.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item%20list%20view%20section/custom_items_list_view_section.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          const BannersPageView(),
          const SizedBox(
            height: 16,
          ),
          CustomItemsListViewSection(
            scrollController: ScrollController(),
            title: "Channels",
            items: channels,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomItemsListViewSection(
            scrollController: ScrollController(),
            title: "Series",
            items: seriesTypes,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomItemsListViewSection(
            scrollController: ScrollController(),
            title: "Movies",
            items: movies,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomItemsListViewSection(
            scrollController: ScrollController(),
            title: "Clips",
            items: clipsTypes,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomItemsListViewSection(
            scrollController: ScrollController(),
            title: "Programs",
            items: programsTypes,
          ),
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              'Clone For Ishow Home Page | 2024',
              style: AppStyles.style14Regular(context).copyWith(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
