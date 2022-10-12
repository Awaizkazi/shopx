import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shopx/GETX/bottom_sheet.dart';
import 'package:shopx/GETX/calling_api.dart';
import 'package:shopx/GETX/route_naviagtion.dart';
import 'GETX/counter.dart';
import 'GETX/dialog_box.dart';
import 'GETX/named_navigate.dart';
import 'GETX/observable.dart';
import 'GETX/report_card_container.dart';
import 'GETX/team_report.dart';
import 'Practice/p2.dart';
import 'Practice/p3.dart';
import 'Practice/p4.dart';
import 'Practice/practice1.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, Widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, Widget!),
        breakpoints: [
          ResponsiveBreakpoint.resize(230, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(900, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1400, name: 'XL'),
          ResponsiveBreakpoint.resize(2300, name: '2K'),
          ResponsiveBreakpoint.autoScale(2600, name: '4K'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TeamReport(),
    );
  }
}


//! #6 || Flutter GetX Tutorial || Route Navigation for Un-named Routes using GetX Library
/*
https://www.youtube.com/watch?v=7_Ze16_tMBE&list=PLCaS22Sjc8YR32XmudgmVqs49t-eKKr9t&index=6

 Completed
*/