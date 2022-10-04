import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: //Text(
            //   'This is a next Screen',
            //   style: TextStyle(color: Colors.red, fontSize: 25),
            // ),
            Text(
          '${Get.parameters['someValue']}',
          style: TextStyle(fontSize: 23, color: Colors.red),
        ),
      ),
    );
  }
}
