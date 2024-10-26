class CustomItemModel {
  final String itemTitle, itemImage, category;
  final String? itemState, itemDesc;

  const CustomItemModel({
    required this.itemTitle,
    required this.itemImage,
    this.itemState,
    this.itemDesc,
    required this.category,
  });
}
