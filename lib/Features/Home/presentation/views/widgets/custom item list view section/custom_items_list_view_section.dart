import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/data/models/custom_item_model.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item%20list%20view%20section/custom_items_list_view.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item%20list%20view%20section/drag_actions_button.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';

class CustomItemsListViewSection extends StatelessWidget {
  const CustomItemsListViewSection(
      {super.key,
      required this.title,
      required this.items,
      required this.scrollController});

  final String title;
  final List<CustomItemModel> items;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppStyles.style28Medium(context),
              ),
              DragActionsButton(
                scrollController: scrollController,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomItemsListView(
          items: items,
          scrollController: scrollController,
        ),
      ],
    );
  }
}
