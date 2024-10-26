import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/size_config.dart';

class BannerPageViewItem extends StatelessWidget {
  const BannerPageViewItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(context),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          image,
        ),
        fit: BoxFit.fill,
      )),
    );
  }

  double getHeight(BuildContext context) {
    return MediaQuery.sizeOf(context).width > SizeConfig.tablet
        ? MediaQuery.sizeOf(context).height * .65
        : MediaQuery.sizeOf(context).height * .3;
  }
}
