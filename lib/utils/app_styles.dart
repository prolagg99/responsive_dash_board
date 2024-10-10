// abstracts cuz i do not need an object of this class

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16 = TextStyle(
    color: const Color(0xff064061),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleMeduim16 = TextStyle(
    color: const Color(0xff064061),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w500,
  );

  static TextStyle styleSemiBold16 = TextStyle(
    color: const Color(0xff064061),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleSemiBold20 = TextStyle(
    color: const Color(0xff064061),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular12 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold24 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleRegular14 = TextStyle(
    color: const Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontWeight: FontWeight.w400,
  );

  static TextStyle styleSemiBold18 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontWeight: FontWeight.w600,
  );

  static TextStyle styleBold16 = TextStyle(
    color: const Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontWeight: FontWeight.w700,
  );

  static TextStyle styleMeduim20 = TextStyle(
    color: const Color(0xffffffff),
    fontFamily: 'Montserrat',
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontWeight: FontWeight.w500,
  );
}

// for a responsive fontSizeyou have to:
// 1. calculate the scaleFactor
// 2. calculate the responsive fontSize
// 3. the min,max fontSize

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = (fontSize * scaleFactor);

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;

  double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    // return width / 400;
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    // return width / 700;
    return width / 1000;
  } else {
    // return width / 1000;
    return width / 1920;
  }
}
