import 'package:flutter/material.dart';

import 'constant_size.dart';
import 'get_screen_type.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    this.large,
    this.desktop,
    this.tablet,
    required this.mobile,
  }) : super(key: key);

  final Widget? large, desktop, tablet;
  final Widget mobile;

  static dynamic T(
    context, {
    dynamic large,
    dynamic desktop,
    dynamic tablet,
    required dynamic mobile,
  }) {
    if (GetScreenType.isLarge(context)) {
      return large ?? desktop ?? tablet ?? mobile;
    } else if (GetScreenType.isDesktop(context)) {
      return desktop ?? tablet ?? mobile;
    } else if (GetScreenType.isTablet(context)) {
      return tablet ?? mobile;
    } else {
      return mobile;
    }
  }

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= ConstantSize.largeSize) {
          return large ?? desktop ?? mobile;
        } else if (constraints.maxWidth >= ConstantSize.desktopSize) {
          return desktop ?? tablet ?? mobile;
        } else if (constraints.maxWidth >= ConstantSize.tabletSize) {
          return tablet ?? mobile;
        }
        return mobile;
      },
    );
  }
}
