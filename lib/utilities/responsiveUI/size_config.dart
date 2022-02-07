import 'package:flutter/material.dart';

import 'device_type.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? aspectRatio;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  void init(BuildContext context) {
    if (getDeviceType(context) == 'phone') {
      _mediaQueryData = MediaQuery.of(context);
      screenWidth = _mediaQueryData!.size.width;
      screenHeight = _mediaQueryData!.size.height;
      blockSizeHorizontal = screenWidth! / 100;
      blockSizeVertical = screenHeight! / 100;
    } else {
      _mediaQueryData = MediaQuery.of(context);
      screenWidth =
          _mediaQueryData!.size.width - _mediaQueryData!.size.width * 0.2;
      screenHeight = _mediaQueryData!.size.height;
      aspectRatio = _mediaQueryData!.size.aspectRatio;
      blockSizeHorizontal = screenWidth! / 100;
      blockSizeVertical = screenHeight! / 100;
    }
  }
}
