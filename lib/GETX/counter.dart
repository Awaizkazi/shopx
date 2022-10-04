import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterUsingGetX extends StatelessWidget {
  CounterUsingGetX({super.key});
  var count = 0.obs;
  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter using Getx',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter using GETX'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'You have pushed this many times \n$count',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22),
                ),
              ),
              // SizedBox(height: 10),
              // FloatingActionButton(
              //   onPressed: () {
              //     increment();
              //   },
              //   child: Icon(Icons.add),
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
