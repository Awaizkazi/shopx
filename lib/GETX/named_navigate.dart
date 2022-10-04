import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/GETX/home.dart';
import 'package:shopx/GETX/next_screen.dart';
import 'package:shopx/GETX/unknown_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Navigation Using GETX',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        // GetPage(
        //   name: '/nextScreen',
        //   page: () => NextScreen(),
        //   // To control the transition route wise
        //   // If specified will override the default transition
        //   transition: Transition.leftToRight,
        // ),
        // GetPage(name: '/nextScreen/:someValue', page: (() => NextScreen())),
        GetPage(name: '/notFound', page: (() => UnKnown())),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('Named Navigation'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');  
                  // Go to home screen but no option to return to previous screen
                  // Get.offNamed('/home');
                  // Go to home screen and cancel all previous screen
                  // Get.offAllNamed('/home');

                  // Dynamic URL Link
                  //   Get.toNamed(
                  //       '/home?channel=Ripples Code&content=Flutter Getx');
                },
                child: Text('Got to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
