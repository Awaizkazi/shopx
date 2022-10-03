import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/GETX/bottom_sheet.dart';
import 'package:shopx/GETX/dialog_box.dart';
import 'package:shopx/GETX/home_screen.dart';

class RouteNavigation extends StatelessWidget {
  const RouteNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Route navigation',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Route navigation'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Dialog page'),
                onPressed: (() async {
                  // Get.to(
                  //   HomeScreen(),
                  //   transition: Transition.zoom,
                  //   // Duration for Transition animation
                  //   duration: Duration(milliseconds: 2000),
                  //   // Curve Animation
                  //   curve: Curves.fastOutSlowIn,
                  // );
                  // // Go to home screen but no option to return to previous screen
                  // Get.off(HomeScreen());
                  // // Go to home screen and cancel all previous screens/ routes
                  // Get.offAll(HomeScreen());
                  // Go to next screens with some data
                  // Get.to(HomeScreen(), arguments: 'Data From Route Navigation');
                  // Go to next Screen and receive data sent from home screen
                  // Next Screen pe jane ke baad data receive kare and then wo data ko HomeScreen pe show kare
                  var data = await Get.to(HomeScreen());
                  print('Received Data : ${data}');
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
