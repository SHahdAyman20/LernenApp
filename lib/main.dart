import 'package:flutter/material.dart';
import 'package:germanApp/view/Screens/Homescreen/homescreen.dart';
import 'package:germanApp/view/Screens/splashScreen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}

