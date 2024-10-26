import 'package:flutter/material.dart';
import 'package:ishow_clone/Features/Home/data/models/custom_item_model.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_item_overlay.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_item_state.dart';
import 'package:ishow_clone/Features/Home/presentation/views/widgets/custom%20item/custom_item_title.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/size_config.dart';

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
              width: getWidth(itemModel.category, MediaQuery.sizeOf(context).width),
              height:  getHeight(itemModel.category, MediaQuery.sizeOf(context).width),
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
                    category:itemModel.category,
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
          child:itemModel.itemState ==null ? SizedBox() :  CustomItemState(itemState: itemModel.itemState!),
        ),
      ],
    );
  }
}

double getWidth(String category,double screanWidth){
  double width;
  if(category == kSeries){
    width = screanWidth < SizeConfig.tablet ? 146 : 175;
  } else {
     width = screanWidth < SizeConfig.tablet ? 125 : 130;
  }
  return width;
}
double getHeight(String category,double screanWidth){
  double height;
  if(category == kSeries){
    height = screanWidth < SizeConfig.tablet ? 117 : 175;
  } else {
     height = screanWidth < SizeConfig.tablet ? 146 : 175;
  }
  return height;
}