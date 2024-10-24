import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/app_styles.dart';
import 'package:ishow_clone/core/widgets/Drawer/Other%20Platforms/the_content_expandable_tile_item.dart';
import 'package:ishow_clone/core/widgets/Drawer/variables.dart';

class TheContentExpandableTile extends StatefulWidget {
  const TheContentExpandableTile({super.key});
  

  @override
  State<TheContentExpandableTile> createState() =>
      _TheContentExpandableTileState();
}

class _TheContentExpandableTileState extends State<TheContentExpandableTile> {
  final List<String> items = [
    'Channels',
    'Series',
    'Movies',
    'Clips',
    'TV Programs',
    'Bundles',
  ];

  // int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: Border.all(
        color: Colors.transparent,
      ),
      expandedAlignment: Alignment.centerLeft,
      title: Text(
        "The Content",
        style: AppStyles.style16Regular(context),
      ),
      minTileHeight: 60,
      children: List.generate(items.length, (index) {
        return TheContentExpandableTileItem(
          onPressed: () {
            setState(() {
              currentIndex = index;
            });
          },
          isActive: currentIndex == index,
          title: items[index],
        );
      }),
    );
  }
}
