class ConstantSize {
  static int get mobileSize => _mobileSize;
  static int get tabletSize => _tabletSize;
  static int get desktopSize => _desktopSize;
  static int get largeSize => _largeSize;

  set setMobileSize(int value) => _mobileSize = value;
  set setTabletSize(int value) => _tabletSize = value;
  set setDesktopSize(int value) => _desktopSize = value;
  set setLargeSize(int value) => _largeSize = value;

  static int _mobileSize = 481;
  static int _tabletSize = 482;
  static int _desktopSize = 1025;
  static int _largeSize = 1201;
}
