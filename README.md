<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: A personal package helper for flutter.

## Features

1.0 Responsive Helper
2.0 Debug Helper

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

### Responsive Widget

```dart
 Responsive(
    child: Text('Mobile Screen'), //Required
    tablet: Text('Tablet Screen'),
    desktop: Text('Desktop Screen'),
    large: Text('Large Screen'),
),

```

### Adaptive Type

```
 AType(context,
    defaultValue: 16,
    scaleFactor: 3,
    mobileScaleFactor: 5,
    tabletScaleFactor: 7)
.value,

```

### Responsive Type

```
 RType<Color>(
    context,
    defaultValue: Colors.red,
    tablet: Colors.amber,
    ).value,
```

### Row and Column

```
RowColumn(
isRow: DeviceScreen.isTablet(context), //Get Screen Type
children: [],
),

```

## Additional information
