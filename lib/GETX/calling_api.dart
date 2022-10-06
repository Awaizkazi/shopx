import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CallingAPI extends StatefulWidget {
  const CallingAPI({super.key});

  @override
  State<CallingAPI> createState() => _CallingAPIState();
}

class _CallingAPIState extends State<CallingAPI> {
  final url =
      'https://www.uponly.in/mobileappapi/team_input_report.php?emp_id=11118';
  // final url = 'https://jsonplaceholder.typicode.com/photos';
  var data;

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
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
       
        child: Card(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    ReportMainCard(
                        teamMemberName: data[index]['team_member'],
                        ftdDmLeads: data[index]['ftd_dm_leads'].toString(),
                        ftdAssigned:
                            data[index]['ftd_assigned_data'].toString(),
                        ftdUpload: data[index]['ftd_upload_data'].toString(),
                        ftdUntochData:
                            data[index]['ftd_untouch_data'].toString(),
                        ftdDialOut: data[index]['ftd_dialout'].toString(),
                        ftdConnectedCalls:
                            data[index]['ftd_connected_calls'].toString(),
                        ftdAvgTime: data[index]['ftd_Avgcalltime'].toString(),
                        ftdTotalTime:
                            data[index]['ftd_Total_Connected_time'].toString(),
                        ftdFreshMeetings:
                            data[index]['ftd_freshmeeting'].toString(),
                        ftdMFU: data[index]['ftd_mfu'].toString(),
                        ftdNMFU: data[index]['ftd_nmfu'].toString(),
                        ftdCallwithPresentation: data[index]
                                ['ftd_call_with_presentattion']
                            .toString(),
                        ftdCallWithoutPresentation: data[index]
                                ['ftd_call_without_presentattion']
                            .toString()),
                  ],
                ),
              );
            },
          ),
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
    return Container(
      width: cardWidth,
      height: cardheight,
      child: Card(
        color: cardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              cardTitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: cardTextColor, fontSize: 14),
            ),
            Text(
              cardSubTitle,
              textAlign: TextAlign.center,
              style: TextStyle(color: cardTextColor, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget ReportMainCard(
      {teamMemberName,
      ftdDmLeads,
      ftdAssigned,
      ftdUpload,
      ftdUntochData,
      ftdDialOut,
      ftdConnectedCalls,
      ftdAvgTime,
      ftdTotalTime,
      ftdFreshMeetings,
      ftdMFU,
      ftdNMFU,
      ftdCallwithPresentation,
      ftdCallWithoutPresentation}) {
    return Stack(
      children: [
        Column(
          children: [
            Positioned(
              left: 10,
              right: 10,
              bottom: 10,
              top: 10,
              child: Container(
                width: 380,
                height: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    teamMemberName, // This is im String format
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff1E294E),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          right: 10,
          top: 30,
          bottom: 10,
          child: Container(
            width: 340,
            height: 20,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 224, 219, 219),
              borderRadius: BorderRadius.circular(12),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: const Text(
                          'Data Report:',
                          style: TextStyle(
                            fontSize: 18,
                            decoration:
                                TextDecoration.underline, // <-- SEE HERE
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 101, 3, 118),
                          cardTitle: 'DM Leads',
                          cardSubTitle: ftdDmLeads,
                          cardTextColor: Colors.white,
                          cardWidth: 80.0,
                          cardheight: 85.0),
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 7, 170, 159),
                          cardTitle: 'Assigned',
                          cardSubTitle: ftdAssigned,
                          cardTextColor: Colors.white,
                          cardWidth: 80.0,
                          cardheight: 85.0),
                      ReportSubCards(
                          cardColor: Colors.blue,
                          cardTitle: 'Upload',
                          cardSubTitle: ftdUpload,
                          cardTextColor: Colors.white,
                          cardWidth: 80.0,
                          cardheight: 85.0),
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 8, 88, 49),
                          cardTitle: 'Untouch Data',
                          cardSubTitle: ftdUntochData,
                          cardTextColor: Colors.white,
                          cardWidth: 80.0,
                          cardheight: 85.0),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Call Output (Avg):',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            decoration:
                                TextDecoration.underline, // <-- SEE HERE
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 45, 146, 48),
                          cardTitle: 'Dial Out',
                          cardSubTitle: ftdDialOut,
                          cardTextColor: Colors.white,
                          cardWidth: 80.0,
                          cardheight: 85.0),
                      ReportSubCards(
                          cardColor: Colors.indigo,
                          cardTitle: 'Connected\n Calls',
                          cardSubTitle: ftdConnectedCalls,
                          cardTextColor: Colors.white,
                          cardWidth: 80.0,
                          cardheight: 85.0),
                      ReportSubCards(
                          cardColor: Color.fromARGB(232, 241, 210, 37),
                          cardTitle: 'Avg Time',
                          cardSubTitle: ftdAvgTime,
                          cardTextColor: Colors.white,
                          cardWidth: 80.0,
                          cardheight: 85.0),
                      ReportSubCards(
                          cardColor: Colors.grey.shade800,
                          cardTitle: 'Total Time',
                          cardSubTitle: ftdTotalTime,
                          cardTextColor: Colors.white,
                          cardWidth: 80.0,
                          cardheight: 85.0),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Data Output:',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            decoration:
                                TextDecoration.underline, // <-- SEE HERE
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 231, 175, 8),
                          cardTitle: 'Fresh Meetings',
                          cardSubTitle: ftdFreshMeetings,
                          cardTextColor: Colors.white,
                          cardWidth: 120.0,
                          cardheight: 80.0),
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 91, 33, 13),
                          cardTitle: 'MFU',
                          cardSubTitle: ftdMFU,
                          cardTextColor: Colors.white,
                          cardWidth: 120.0,
                          cardheight: 80.0),
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 244, 46, 7),
                          cardTitle: 'NMFU',
                          cardSubTitle: ftdNMFU,
                          cardTextColor: Colors.white,
                          cardWidth: 120.0,
                          cardheight: 80.0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 226, 12, 12),
                          cardTitle: 'Call with Presentation',
                          cardSubTitle: ftdCallwithPresentation,
                          cardTextColor: Colors.white,
                          cardWidth: 170.0,
                          cardheight: 80.0),
                      ReportSubCards(
                          cardColor: Color.fromARGB(255, 7, 131, 147),
                          cardTitle: 'Call wihout \nPresentation',
                          cardSubTitle: ftdCallWithoutPresentation,
                          cardTextColor: Colors.white,
                          cardWidth: 170.0,
                          cardheight: 80.0),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
