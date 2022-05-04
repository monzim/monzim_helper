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
      backgroundColor: Responsive.T(
        context,
        mobile: Colors.red,
        tablet: Colors.blue,
        desktop: Colors.green,
        large: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Responsive.width(context).toString()),
            const Responsive(
              mobile: Text('Mobile Screen'),
              tablet: Text('Tablet Screen'),
              desktop: Text('Desktop Screen'),
              large: Text('Large Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
