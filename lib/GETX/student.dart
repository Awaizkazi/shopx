import 'package:get/get.dart';

class Student {
  /* Classes can be made observable by making individual variables Rx
  reactive or by making the entire class observable
  */

  // Individual class Rx(reactive)
  // var name = 'Tom'.obs;
  // var age = 25.obs;

  // To make the entire class Observable
  var name;
  var age;
  Student({this.name, this.age});
}
