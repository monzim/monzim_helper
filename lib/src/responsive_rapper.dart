import 'package:flutter/cupertino.dart';
import 'package:monzim/src/get_screen_type.dart';

class RType<T> {
  RType(
    this.context, {
    required this.defaultValue,
    this.large,
    this.desktop,
    this.tablet,
    this.mobile,
  });

  final BuildContext context;
  final T defaultValue;
  final T? large;
  final T? desktop;
  final T? tablet;
  final T? mobile;

  T get largeVal => large ?? defaultValue;
  T get desktopVal => desktop ?? defaultValue;
  T get tabletVal => tablet ?? defaultValue;
  T get mobileVal => mobile ?? defaultValue;

  T get value {
    if (DeviceScreen.isLarge(context)) {
      return large ?? desktop ?? tablet ?? defaultValue;
    } else if (DeviceScreen.isDesktop(context)) {
      return desktop ?? tablet ?? defaultValue;
    } else if (DeviceScreen.isTablet(context)) {
      return tablet ?? mobile ?? defaultValue;
    } else if (DeviceScreen.isMobile(context)) {
      return mobile ?? defaultValue;
    }
    return defaultValue;
  }
}
