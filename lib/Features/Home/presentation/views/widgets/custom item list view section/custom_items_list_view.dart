import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/data/models/custom_item_model.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_animated_item.dart';
import 'package:ishow_clone/constants.dart';

class CustomItemsListView extends StatefulWidget {
  const CustomItemsListView(
      {super.key, required this.items, required this.scrollController});

  final List<CustomItemModel> items;
  final ScrollController scrollController;

  @override
  State<CustomItemsListView> createState() => _CustomItemsListViewState();
}

class _CustomItemsListViewState extends State<CustomItemsListView> {
  @override
  void initState() {
    listenToListViewScroll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.scrollController,
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.items.length, (index) {
          return Padding(
            padding: EdgeInsets.only(
                left: index == 0 ? kHorizontalPadding : 0,
                right: index == 14 ? kHorizontalPadding : 12),
            child: CustomAnimatedItem(
              itemModel: widget.items[index],
            ),
          );
        }),
      ),
    );
  }

  void listenToListViewScroll() {
    widget.scrollController.addListener(
      () {
        if (mounted) {
          // check whether the state object is in tree
          setState(() {
            // make changes here
          });
        }
      },
    );
  }
}
