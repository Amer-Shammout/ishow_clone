import 'package:ishow_clone/Features/Home/data/models/custom_item_model.dart';
import 'package:ishow_clone/constants.dart';
import 'package:ishow_clone/core/utils/app_images.dart';

const List<CustomItemModel> seriesTypes = [
  CustomItemModel(
    category: kSeries,
    itemTitle: 'Arabic',
    itemImage: Assets.imagesArabic,
  ),
  CustomItemModel(
    category: kSeries,
    itemTitle: 'Foreign',
    itemImage: Assets.imagesForeign,
  ),
  CustomItemModel(
    category: kSeries,
    itemTitle: 'Cartoon',
    itemImage: Assets.imagesCartoon,
  ),
  CustomItemModel(
    category: kSeries,
    itemTitle: 'Anime',
    itemImage: Assets.imagesAnime,
  ),
  CustomItemModel(
    category: kSeries,
    itemTitle: 'Youtube Series',
    itemImage: Assets.imagesYoutube,
  ),
  CustomItemModel(
    category: kSeries,
    itemTitle: '2024 Series',
    itemImage: Assets.imagesSeries2024,
  ),
];
