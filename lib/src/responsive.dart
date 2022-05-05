import 'package:flutter/material.dart';

import 'device_size.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.child,
    this.large,
    this.desktop,
    this.tablet,
    this.mobile,
  }) : super(key: key);

  final Widget? large, desktop, tablet, mobile;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= DeviceSize.large) {
          return large ?? desktop ?? tablet ?? child;
        } else if (constraints.maxWidth >= DeviceSize.desktop) {
          return desktop ?? tablet ?? child;
        } else if (constraints.maxWidth >= DeviceSize.tablet) {
          return tablet ?? mobile ?? child;
        }
        return mobile ?? child;
      },
    );
  }
}
