import 'package:flutter/material.dart';

class SizeConfig {
  // hold all the repetitive variables in the responsive app

  static const double desktop = 1200;
  static const double tablet = 800;
  static const double mobile = 600;

  // --- the snippet below is not useable in case of desktop when
  // user change the size of screen in real time (will not be updated)
  // it is okay for mobile & tablet device

  static late double width, height;

  static init(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
