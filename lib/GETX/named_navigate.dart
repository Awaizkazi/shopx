import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/GETX/home.dart';
import 'package:shopx/GETX/next_screen.dart';
import 'package:shopx/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Named Navigation Using GETX',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(
          name: '/nextScreen',
          page: () => NextScreen(),
          // To control the transition route wise
          // If specified will override the default transition
          transition: Transition.leftToRight,
        ),
      ],
    );
  }
}
