import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a Home Screen',
              style: TextStyle(color: Colors.purple),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed("/nextScreen");
                Get.toNamed("/nextScreen/1245");
              },
              child: Text('Next Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Back to Main Screen'),
            ),
            //  Retrive data from named_navigation
            // Text(
            //   'channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}',
            //   style: TextStyle(fontSize: 24, color: Colors.red),
            // ),
          ],
        ),
      ),
    );
  }
}
