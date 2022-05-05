import 'package:flutter/material.dart';
import 'package:monzim/src/device_size.dart';

class DeviceScreen {
  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= DeviceSize.large;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= DeviceSize.desktop;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= DeviceSize.tablet &&
      MediaQuery.of(context).size.width < DeviceSize.desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= DeviceSize.mobile;

  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
