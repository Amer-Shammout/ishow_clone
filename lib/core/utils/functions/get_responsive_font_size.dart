import 'package:flutter/material.dart';
import 'package:ishow_clone/core/utils/size_config.dart';

double getResponsiveFontSize(
  BuildContext context, {
  required baseFontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * baseFontSize;

  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // PlatformDispatcher dispatcher = PlatformDispatcher.instance;
  // double phisicalWidth = dispatcher.views.first.physicalSize.width;
  // double devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double screenWidth = phisicalWidth / devicePixelRatio;

  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < SizeConfig.tablet) {
    return screenWidth / 550;
  } else if (screenWidth < SizeConfig.desktop) {
    return screenWidth / 1000;
  } else {
    return screenWidth / 1920;
  }
}
