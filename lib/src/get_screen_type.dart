import 'package:flutter/material.dart';
import 'package:monzim/src/constant_size.dart';

class GetScreenType {
  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= ConstantSize.largeSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= ConstantSize.desktopSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= ConstantSize.tabletSize &&
      MediaQuery.of(context).size.width < ConstantSize.desktopSize;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= ConstantSize.mobileSize;
}
