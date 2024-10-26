import 'package:ishow_clone/Features/Home/data/models/custom_item_model.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

const List<CustomItemModel> clipsTypes = [
  CustomItemModel(
    itemTitle: "Health",
    itemImage: Assets.imagesHealth,
    category: kClips,
  ),
  CustomItemModel(
    itemTitle: "Educational",
    itemImage: Assets.imagesBook,
    category: kClips,
  ),
  CustomItemModel(
    itemTitle: "Entertainment",
    itemImage: Assets.imagesEntertainment,
    category: kClips,
  ),
  CustomItemModel(
    itemTitle: "Diverse",
    itemImage: Assets.imagesDiverse,
    category: kClips,
  ),
  CustomItemModel(
    itemTitle: "Cooking",
    itemImage: Assets.imagesFood,
    category: kClips,
  ),
];
