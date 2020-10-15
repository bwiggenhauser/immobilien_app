import 'package:flutter/material.dart';
import 'package:immobilien_app/HomeScreen.dart';
import 'package:immobilien_app/SecondScreen.dart';
import 'package:immobilien_app/ThirdScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller = PageController(
    initialPage: 1,
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageView(
        controller: controller,
        pageSnapping: true,
        children: [
          ThirdScreen(),
          HomeScreen(),
          SecondScreen(),
        ],
      ),
    );
  }
}
