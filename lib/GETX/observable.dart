import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/GETX/student.dart';

class StudentObservable extends StatelessWidget {
  StudentObservable({super.key});
  // var stud = Student();
  // For making the entire class observable
  final stud = Student(name: 'Owaiz', age: 12).obs;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student Observable'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'Name is : ${stud.value.name}',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // If individual variables are
                  // stud.name.value = stud.name.value.toUpperCase();

                  // IF entire class is observable
                  stud.update((stud) {
                    stud!.name = stud.name.toUpperCase();
                  });
                },
                child: Text('Upper'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
