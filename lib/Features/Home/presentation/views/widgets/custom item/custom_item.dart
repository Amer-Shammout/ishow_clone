import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/data/models/custom_item_model.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_item_overlay.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_item_state.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_item_title.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.onHover,
    required this.itemModel,
  });

  final CustomItemModel itemModel;

  final bool onHover;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              alignment: Alignment.topLeft,
              width: 130,
              height: 175,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    itemModel.itemImage,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: onHover
                  ? CustomItemOverlay(
                      desc: itemModel.itemDesc,
                    )
                  : null,
            ),
            CustomItemTitle(title: itemModel.itemTitle),
          ],
        ),
        Positioned(
          left: 8,
          top: 8,
          child: CustomItemState(itemState: itemModel.itemState!),
        ),
      ],
    );
  }
}
