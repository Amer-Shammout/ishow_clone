import 'package:ishow_clone/Features/Home/data/models/custom_item_model.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

const List<CustomItemModel> programsTypes = [
  CustomItemModel(
    itemTitle: "Competition Programs",
    itemImage: Assets.imagesCompititions,
    category: kPrograms,
  ),
  CustomItemModel(
    itemTitle: "Social Programs",
    itemImage: Assets.imagesSocial,
    category: kPrograms,
  ),
  CustomItemModel(
    itemTitle: "TV Plays",
    itemImage: Assets.imagesPlays,
    category: kPrograms,
  ),
  CustomItemModel(
    itemTitle: "Cooking Programs",
    itemImage: Assets.imagesCookingPrograms,
    category: kPrograms,
  ),
  CustomItemModel(
    itemTitle: "Youtube Programs",
    itemImage: Assets.imagesYouTubePrograms,
    category: kPrograms,
  ),
  CustomItemModel(
    itemTitle: "Podcast Programs",
    itemImage: Assets.imagesPodcast,
    category: kPrograms,
  ),
  CustomItemModel(
    itemTitle: "Talk Shows",
    itemImage: Assets.imagesConversation,
    category: kPrograms,
  ),
];
