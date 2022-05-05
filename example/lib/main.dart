import 'package:flutter/material.dart';
import 'package:monzim/monzim.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RType<Color>(
        context,
        defaultValue: Colors.red,
        tablet: Colors.amber,
      ).value,
      body: Center(
        child: RowColumn(
          isRow: DeviceScreen.isTablet(context),
          children: [
            Text(
              DeviceSize.width(context).toString(),
              style: TextStyle(
                fontSize: AType(context,
                        defaultValue: 16,
                        scaleFactor: 3,
                        mobileScaleFactor: 5,
                        tabletScaleFactor: 7)
                    .value,
              ),
            ),
            Responsive(
              child: Text(
                'Mobile Screen',
                style: TextStyle(
                  fontSize: AType(
                    context,
                    defaultValue: 16,
                    scaleFactor: 3,
                    // mobileScaleFactor: 5
                  ).value,
                ),
              ),
              tablet: const Text('Tablet Screen'),
              desktop: const Text('Desktop Screen'),
              large: const Text('Large Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
