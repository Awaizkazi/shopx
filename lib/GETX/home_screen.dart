import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Next Screen'),
            ),
            // Text(
            //   '${Get.arguments}',
            //   style: TextStyle(color: Colors.black, fontSize: 20),
            // ),

            // send data to previous screen must use result as name
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'This is from Home Screen');
              },
              child: Text('Back Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
