import 'package:flutter/material.dart';
import 'package:monzim/monzim.dart';

class AType {
  AType(
    this.context, {
    required this.defaultValue,
    this.scaleFactor = 1,
    this.mobile,
    this.tablet,
    this.desktop,
    this.large,
    this.mobileScaleFactor,
    this.tabletScaleFactor,
    this.desktopScaleFactor,
    this.largeScaleFactor,
  });

  final BuildContext context;
  final double defaultValue, scaleFactor;
  final double? mobile,
      tablet,
      desktop,
      large,
      mobileScaleFactor,
      tabletScaleFactor,
      desktopScaleFactor,
      largeScaleFactor;

  double get _val {
    if (DeviceScreen.isLarge(context)) {
      return largeVal;
    } else if (DeviceScreen.isDesktop(context)) {
      return desktopVal;
    } else if (DeviceScreen.isTablet(context)) {
      return tabletVal;
    } else if (DeviceScreen.isMobile(context)) {
      return mobileVal;
    }
    return defaultValue;
  }

  double get value => _val;
  double get defaultVal => defaultValue;

  double get largeVal =>
      (large ?? defaultValue) +
      MediaQuery.of(context).size.width /
          100 *
          (largeScaleFactor ?? scaleFactor);

  double get desktopVal =>
      (desktop ?? defaultValue) +
      MediaQuery.of(context).size.width /
          100 *
          (desktopScaleFactor ?? scaleFactor);

  double get tabletVal =>
      (tablet ?? defaultValue) +
      MediaQuery.of(context).size.width /
          100 *
          (tabletScaleFactor ?? scaleFactor);

  double get mobileVal =>
      (mobile ?? defaultValue) +
      MediaQuery.of(context).size.width /
          100 *
          (mobileScaleFactor ?? scaleFactor);
}
