import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calling_api.dart';

class TeamReport extends StatefulWidget {
  const TeamReport({super.key});

  @override
  State<TeamReport> createState() => _TeamReportState();
}

class _TeamReportState extends State<TeamReport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1E294E), Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 2, 17, 66),
              ),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          title: Text(
            'Team Report',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 23),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 390,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 140,
                        height: 50,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(' From : '),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.calendar_month))
                            ],
                          ),
                          color: Colors.grey.shade400,
                          shadowColor: Colors.grey.shade900,
                          elevation: 14,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 50,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(' To : '),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.calendar_month),
                              ),
                            ],
                          ),
                          color: Colors.grey.shade400,
                          shadowColor: Colors.grey.shade900,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '   Go',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          color: Colors.grey.shade400,
                          shadowColor: Colors.grey.shade900,
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      hintText: 'Search Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff1E294E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Card(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          'FTD',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff1E294E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Card(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          'MTD',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff1E294E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Card(
                      color: Colors.transparent,
                      child: Center(
                        child: Text(
                          'YTD',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Calling a Widget here that I made below in this file only
              Summary(),
              SizedBox(
                height: 10,
              ),
              // ReportMainCard(),
              // CallingAPI(),
            ],
          ),
        ),
      ),
    );
  }

  Widget Cards({cardTitle, cardSubTitle, cardColor, cardTextColor}) {
    return Container(
      width: 110,
      height: 70,
      child: Card(
        color: cardColor,
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
              style: TextStyle(color: cardTextColor, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget Summary() {
    return Stack(
      children: [
        Wrap(children: [
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
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      '~Summary~',
                      textAlign: TextAlign.center,
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
        ]),
        // CallingAPI(),
        Positioned(
          left: 10,
          right: 10,
          top: 30,
          bottom: 10,
          child: Container(
            width: 340,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
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
                          decoration: TextDecoration.underline, // <-- SEE HERE
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cards(
                        cardColor: Color.fromARGB(255, 45, 146, 48),
                        cardTitle: 'Team Size',
                        cardSubTitle: '0',
                        cardTextColor: Colors.white),
                    Cards(
                        cardColor: Colors.amber,
                        cardTitle: 'Active Users',
                        cardSubTitle: '0',
                        cardTextColor: Colors.black),
                    Cards(
                        cardColor: Color.fromARGB(255, 8, 88, 49),
                        cardTitle: 'Upload Data',
                        cardSubTitle: '0',
                        cardTextColor: Colors.white),
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
                          decoration: TextDecoration.underline, // <-- SEE HERE
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cards(
                        cardColor: Color.fromARGB(255, 45, 146, 48),
                        cardTitle: 'Dial Out',
                        cardSubTitle: '0',
                        cardTextColor: Colors.white),
                    Cards(
                        cardColor: Colors.amber,
                        cardTitle: 'Connected\n Calls',
                        cardSubTitle: '0',
                        cardTextColor: Colors.black),
                    Cards(
                        cardColor: Color.fromARGB(255, 8, 88, 49),
                        cardTitle: 'Time',
                        cardSubTitle: '0 mins',
                        cardTextColor: Colors.white),
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
                          decoration: TextDecoration.underline, // <-- SEE HERE
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cards(
                        cardColor: Color.fromARGB(255, 45, 146, 48),
                        cardTitle: 'Fresh Meetings',
                        cardSubTitle: '0',
                        cardTextColor: Colors.white),
                    Cards(
                        cardColor: Colors.amber,
                        cardTitle: 'MFU',
                        cardSubTitle: '0',
                        cardTextColor: Colors.black),
                    Cards(
                        cardColor: Color.fromARGB(255, 8, 88, 49),
                        cardTitle: 'NMFU',
                        cardSubTitle: '0',
                        cardTextColor: Colors.white),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Cards(
                        cardColor: Color.fromARGB(255, 45, 146, 48),
                        cardTitle: 'Hot',
                        cardSubTitle: '0',
                        cardTextColor: Colors.white),
                    Cards(
                        cardColor: Colors.amber,
                        cardTitle: 'Pending Doc',
                        cardSubTitle: '0',
                        cardTextColor: Colors.black),
                    Cards(
                        cardColor: Color.fromARGB(255, 8, 88, 49),
                        cardTitle: '',
                        cardSubTitle: '0',
                        cardTextColor: Colors.white),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

//   Widget ReportSubCards(
//       {cardTitle,
//       cardSubTitle,
//       cardColor,
//       cardTextColor,
//       cardWidth,
//       cardheight}) {
//     return Container(
//       width: cardWidth,
//       height: cardheight,
//       child: Card(
//         color: cardColor,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               cardTitle,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: cardTextColor, fontSize: 14),
//             ),
//             Text(
//               cardSubTitle,
//               textAlign: TextAlign.center,
//               style: TextStyle(color: cardTextColor, fontSize: 15),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget ReportMainCard() {
//     return Stack(
//       children: [
//         Column(
//           children: [
//             Positioned(
//               left: 10,
//               right: 10,
//               bottom: 10,
//               top: 10,
//               child: Container(
//                 width: 380,
//                 height: 380,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(4.0),
//                   child: Text(
//                     'Abhishek Patidar',
//                     // textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Color(0xff1E294E),
//                       fontSize: 17,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Positioned(
//           left: 10,
//           right: 10,
//           top: 30,
//           bottom: 10,
//           child: Container(
//             width: 340,
//             height: 20,
//             decoration: BoxDecoration(
//               color: Color.fromARGB(255, 224, 219, 219),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: const Text(
//                           'Data Report:',
//                           style: TextStyle(
//                             fontSize: 18,
//                             decoration:
//                                 TextDecoration.underline, // <-- SEE HERE
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 101, 3, 118),
//                           cardTitle: 'DM Leads',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 80.0,
//                           cardheight: 85.0),
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 7, 170, 159),
//                           cardTitle: 'Assigned',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 80.0,
//                           cardheight: 85.0),
//                       ReportSubCards(
//                           cardColor: Colors.blue,
//                           cardTitle: 'Upload',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 80.0,
//                           cardheight: 85.0),
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 8, 88, 49),
//                           cardTitle: 'Untouch Data',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 80.0,
//                           cardheight: 85.0),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8),
//                         child: Text(
//                           'Call Output (Avg):',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                             fontSize: 18,
//                             decoration:
//                                 TextDecoration.underline, // <-- SEE HERE
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 45, 146, 48),
//                           cardTitle: 'Dial Out',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 80.0,
//                           cardheight: 85.0),
//                       ReportSubCards(
//                           cardColor: Colors.indigo,
//                           cardTitle: 'Connected\n Calls',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 80.0,
//                           cardheight: 85.0),
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(232, 241, 210, 37),
//                           cardTitle: 'Avg Time',
//                           cardSubTitle: '0.00 mins',
//                           cardTextColor: Colors.white,
//                           cardWidth: 80.0,
//                           cardheight: 85.0),
//                       ReportSubCards(
//                           cardColor: Colors.grey.shade800,
//                           cardTitle: 'Total Time',
//                           cardSubTitle: '0.00mins',
//                           cardTextColor: Colors.white,
//                           cardWidth: 80.0,
//                           cardheight: 85.0),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 8),
//                         child: Text(
//                           'Data Output:',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                             fontSize: 18,
//                             decoration:
//                                 TextDecoration.underline, // <-- SEE HERE
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 231, 175, 8),
//                           cardTitle: 'Fresh Meetings',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 120.0,
//                           cardheight: 80.0),
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 91, 33, 13),
//                           cardTitle: 'MFU',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 120.0,
//                           cardheight: 80.0),
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 244, 46, 7),
//                           cardTitle: 'NMFU',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 120.0,
//                           cardheight: 80.0),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 226, 12, 12),
//                           cardTitle: 'Call with Presentation',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 170.0,
//                           cardheight: 80.0),
//                       ReportSubCards(
//                           cardColor: Color.fromARGB(255, 7, 131, 147),
//                           cardTitle: 'Call wihout \nPresentation',
//                           cardSubTitle: '0',
//                           cardTextColor: Colors.white,
//                           cardWidth: 170.0,
//                           cardheight: 80.0),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
}
