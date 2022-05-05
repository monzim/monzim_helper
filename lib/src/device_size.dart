import 'package:flutter/material.dart';

class DeviceSize {
  set setMobileSize(int value) => _mobileSize = value;
  set setTabletSize(int value) => _tabletSize = value;
  set setDesktopSize(int value) => _desktopSize = value;
  set setLargeSize(int value) => _largeSize = value;

  static int get mobile => _mobileSize;
  static int get tablet => _tabletSize;
  static int get desktop => _desktopSize;
  static int get large => _largeSize;

  static int _mobileSize = 481;
  static int _tabletSize = 482;
  static int _desktopSize = 1025;
  static int _largeSize = 1201;

  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.width;
}
