import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shopx/Practice/p5.dart';

class p6 extends StatefulWidget {
  const p6({super.key});

  @override
  State<p6> createState() => _p6State();
}

class _p6State extends State<p6> {
  final url =
      'https://www.uponly.in/mobileappapi/assigned_data_by_emp_id.php?emp_id=11147';
  // final url = 'https://jsonplaceholder.typicode.com/photos';
  var data = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      getData();
    });
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          shrinkWrap: true,
          // physics: NeverScrollableScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 570,
                  child: p5(),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                          offset: Offset(0, 4)),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          data[index]['fname'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff2A3C62),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(7.0),
                        width: double.infinity,
                        height: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xffDFDFDF),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ReportMiddleText(reportText: 'Data Report:'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ReportSubCards(
                                      cardColor: Color(0xff673BB7),
                                      cardTitle: 'DM Leads',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 83.0,
                                      cardheight: 92.0),
                                  ReportSubCards(
                                      cardColor: Color(0xff00BCD5),
                                      cardTitle: 'Assigned',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 83.0,
                                      cardheight: 92.0),
                                  ReportSubCards(
                                      cardColor: Color(0xff2196F3),
                                      cardTitle: 'Upload',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 83.0,
                                      cardheight: 92.0),
                                  ReportSubCards(
                                      cardColor: Color(0xff009788),
                                      cardTitle: 'Untouch Data',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 83.0,
                                      cardheight: 92.0),
                                ],
                              ),
                              ReportMiddleText(reportText: 'Call Output:'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ReportSubCards(
                                      cardColor: Color(0xff4CB050),
                                      cardTitle: 'Dial Out',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 83.0,
                                      cardheight: 92.0),
                                  ReportSubCards(
                                      cardColor: Color(0xff3F51B5),
                                      cardTitle: 'Connected Calls',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 83.0,
                                      cardheight: 92.0),
                                  ReportSubCards(
                                      cardColor:
                                          Color.fromARGB(255, 203, 219, 63),
                                      cardTitle: 'Avg Time',
                                      cardSubTitle: '0.00 mins',
                                      cardTextColor: Colors.white,
                                      cardWidth: 83.0,
                                      cardheight: 92.0),
                                  ReportSubCards(
                                      cardColor: Color(0xff607D8B),
                                      cardTitle: 'Total Time',
                                      cardSubTitle: '0.00 mins',
                                      cardTextColor: Colors.white,
                                      cardWidth: 83.0,
                                      cardheight: 92.0),
                                ],
                              ),
                              ReportMiddleText(reportText: 'Data Output'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ReportSubCards(
                                      cardColor: Color(0xffFEC107),
                                      cardTitle: 'Fresh Meetings',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 113.0,
                                      cardheight: 95.0),
                                  ReportSubCards(
                                      cardColor: Color(0xff795547),
                                      cardTitle: 'MFU',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 113.0,
                                      cardheight: 95.0),
                                  ReportSubCards(
                                      cardColor: Color(0xffFE5722),
                                      cardTitle: 'NMFU',
                                      cardSubTitle: '0.00 mins',
                                      cardTextColor: Colors.white,
                                      cardWidth: 113.0,
                                      cardheight: 95.0),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ReportSubCards(
                                      cardColor:
                                          Color.fromARGB(255, 241, 39, 28),
                                      cardTitle: 'Call with Presentation',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 170.0,
                                      cardheight: 92.0),
                                  ReportSubCards(
                                      cardColor: Color(0xff00ABBF),
                                      cardTitle: 'Call Without \nPresentation',
                                      cardSubTitle: '0',
                                      cardTextColor: Colors.white,
                                      cardWidth: 170.0,
                                      cardheight: 92.0),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget ReportSubCards(
      {cardTitle,
      cardSubTitle,
      cardColor,
      cardTextColor,
      cardWidth,
      cardheight}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
        width: cardWidth,
        height: cardheight,
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(6)),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                cardTitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: cardTextColor, fontSize: 15),
              ),
              Text(
                cardSubTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: cardTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ReportMiddleText({reportText}) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2.0, left: 3),
            child: Text(
              reportText,
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.underline, // <-- SEE HERE
              ),
            ),
          ),
        ],
      ),
    );
  }
}
