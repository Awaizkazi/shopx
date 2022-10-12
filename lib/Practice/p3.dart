import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class p3 extends StatefulWidget {
  const p3({super.key});

  @override
  State<p3> createState() => _p3State();
}

class _p3State extends State<p3> {
  final url =
      'https://www.uponly.in/mobileappapi/assigned_data_by_emp_id.php?emp_id=11147';
  var data = [];
  var name = 'Owaiz';
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    print(res.body);
    data = jsonDecode(res.body);
    print(data.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data[index]['fname'],
              ),
              ReportMainCard(),
            ],
          );
        },
        itemCount: data.length,
      ),
    );
  }

  Widget ReportMainCard() {
    return ListView.builder(
        // itemCount: data1.length,
        itemBuilder: (context, index) {
      return Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 550,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black, blurRadius: 5.0, offset: Offset(0, 4)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  'Abhishek patidar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff2A3C62),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(7),
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffDFDFDF),
                ),
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReportMiddleText(reportText: 'Data Report:'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReportSubCards(
                              cardColor: Color(0xff673BB7),
                              cardTitle: 'DM Leads',
                              cardSubTitle: 'ftdDmLeads',
                              cardTextColor: Colors.white,
                              cardWidth: 83.0,
                              cardheight: 92.0),
                          ReportSubCards(
                              cardColor: Color(0xff00BCD5),
                              cardTitle: 'Assigned',
                              cardSubTitle: 'ftdAssigned',
                              cardTextColor: Colors.white,
                              cardWidth: 83.0,
                              cardheight: 92.0),
                          ReportSubCards(
                              cardColor: Color(0xff2196F3),
                              cardTitle: 'Upload',
                              cardSubTitle: 'ftdUpload',
                              cardTextColor: Colors.white,
                              cardWidth: 83.0,
                              cardheight: 92.0),
                          ReportSubCards(
                              cardColor: Color(0xff009788),
                              cardTitle: 'Untouch Data',
                              cardSubTitle: 'ftdUntochData',
                              cardTextColor: Colors.white,
                              cardWidth: 83.0,
                              cardheight: 92.0),
                        ],
                      ),
                      ReportMiddleText(reportText: 'Call Output:'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReportSubCards(
                              cardColor: Color(0xff4CB050),
                              cardTitle: 'Dial Out',
                              cardSubTitle: 'ftdDialOut',
                              cardTextColor: Colors.white,
                              cardWidth: 83.0,
                              cardheight: 92.0),
                          ReportSubCards(
                              cardColor: Color(0xff3F51B5),
                              cardTitle: 'Connected Calls',
                              cardSubTitle: 'ftdConnectedCalls',
                              cardTextColor: Colors.white,
                              cardWidth: 83.0,
                              cardheight: 92.0),
                          ReportSubCards(
                              cardColor: Color.fromARGB(255, 203, 219, 63),
                              cardTitle: 'Avg Time',
                              cardSubTitle: 'ftdAvgTime',
                              cardTextColor: Colors.white,
                              cardWidth: 83.0,
                              cardheight: 92.0),
                          ReportSubCards(
                              cardColor: Color(0xff607D8B),
                              cardTitle: 'Total Time',
                              cardSubTitle: 'ftdTotalTime',
                              cardTextColor: Colors.white,
                              cardWidth: 83.0,
                              cardheight: 92.0),
                        ],
                      ),
                      ReportMiddleText(reportText: 'Data Output'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReportSubCards(
                              cardColor: Color(0xffFEC107),
                              cardTitle: 'Fresh Meetings',
                              cardSubTitle: 'ftdFreshMeetings',
                              cardTextColor: Colors.white,
                              cardWidth: 113.0,
                              cardheight: 95.0),
                          ReportSubCards(
                              cardColor: Color(0xff795547),
                              cardTitle: 'MFU',
                              cardSubTitle: 'ftdMFU',
                              cardTextColor: Colors.white,
                              cardWidth: 113.0,
                              cardheight: 95.0),
                          ReportSubCards(
                              cardColor: Color(0xffFE5722),
                              cardTitle: 'NMFU',
                              cardSubTitle: 'ftdNMFU',
                              cardTextColor: Colors.white,
                              cardWidth: 113.0,
                              cardheight: 95.0),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReportSubCards(
                              cardColor: Color.fromARGB(255, 241, 39, 28),
                              cardTitle: 'Call with Presentation',
                              cardSubTitle: 'ftdCallwithPresentation',
                              cardTextColor: Colors.white,
                              cardWidth: 170.0,
                              cardheight: 92.0),
                          ReportSubCards(
                              cardColor: Color(0xff00ABBF),
                              cardTitle: 'Call Without \nPresentation',
                              cardSubTitle: 'ftdCallWithoutPresentation',
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
          ));
    });
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
