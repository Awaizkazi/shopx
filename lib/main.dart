import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/GETX/bottom_sheet.dart';
import 'package:shopx/GETX/calling_api.dart';
import 'package:shopx/GETX/route_naviagtion.dart';
import 'GETX/counter.dart';
import 'GETX/dialog_box.dart';
import 'GETX/named_navigate.dart';
import 'GETX/observable.dart';
import 'GETX/report_card.dart';
import 'GETX/team_report.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Ex(),
    );
  }
}


//! #6 || Flutter GetX Tutorial || Route Navigation for Un-named Routes using GetX Library
/*
https://www.youtube.com/watch?v=7_Ze16_tMBE&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=6

 Completed
*/