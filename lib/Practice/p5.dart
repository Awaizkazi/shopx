import 'package:flutter/material.dart';

class p5 extends StatelessWidget {
  const p5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 550,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.amber,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 5.0,
                              offset: Offset(0, 4)),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.all(7),
                        child: Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  '~ Summary ~',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff2A3C62),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 500,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color(0xffFFFFFF),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.all(6),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ReportMiddleText(
                                            reportText: 'Data Report:'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ReportSubCards(
                                                cardColor: Color(0xff4CB050),
                                                cardTitle: 'Team Size',
                                                cardSubTitle: '0',
                                                cardTextColor: Colors.white,
                                                cardWidth: 83.0,
                                                cardheight: 92.0),
                                            ReportSubCards(
                                                cardColor: Color.fromARGB(
                                                    255, 250, 205, 137),
                                                cardTitle: 'Active Users',
                                                cardSubTitle: '0',
                                                cardTextColor:
                                                    Colors.grey.shade800,
                                                cardWidth: 83.0,
                                                cardheight: 92.0),
                                            ReportSubCards(
                                                cardColor: Color.fromARGB(
                                                    255, 19, 95, 87),
                                                cardTitle: 'Upload Data',
                                                cardSubTitle: '0',
                                                cardTextColor: Colors.white,
                                                cardWidth: 83.0,
                                                cardheight: 92.0),
                                          ],
                                        ),
                                        ReportMiddleText(
                                            reportText: 'Call Output(Avg):'),
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
                                                cardColor: Color.fromARGB(
                                                    255, 250, 205, 137),
                                                cardTitle: 'Connected\nCalls',
                                                cardSubTitle: '0',
                                                cardTextColor:
                                                    Colors.grey.shade800,
                                                cardWidth: 83.0,
                                                cardheight: 92.0),
                                            ReportSubCards(
                                                cardColor: Color.fromARGB(
                                                    255, 2, 81, 73),
                                                cardTitle: 'Time',
                                                cardSubTitle: '0 mins',
                                                cardTextColor: Colors.white,
                                                cardWidth: 83.0,
                                                cardheight: 92.0),
                                          ],
                                        ),
                                        ReportMiddleText(
                                            reportText: 'Data Output'),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            ReportSubCards(
                                                cardColor: Color(0xff4CB050),
                                                cardTitle: 'Fresh Meetings',
                                                cardSubTitle: '0',
                                                cardTextColor: Colors.white,
                                                cardWidth: 113.0,
                                                cardheight: 95.0),
                                            ReportSubCards(
                                                cardColor: Color.fromARGB(
                                                    255, 250, 205, 137),
                                                cardTitle: 'MFU',
                                                cardSubTitle: '0',
                                                cardTextColor: Colors.grey[800],
                                                cardWidth: 113.0,
                                                cardheight: 95.0),
                                            ReportSubCards(
                                                cardColor: Color.fromARGB(
                                                    255, 2, 81, 73),
                                                cardTitle: 'NMFU',
                                                cardSubTitle: '0',
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
                                                cardColor: Color(0xff4CB050),
                                                cardTitle: 'Hot',
                                                cardSubTitle: '0',
                                                cardTextColor: Colors.white,
                                                cardWidth: 170.0,
                                                cardheight: 92.0),
                                            ReportSubCards(
                                                cardColor: Color.fromARGB(
                                                    255, 250, 205, 137),
                                                cardTitle: 'Pending Doc',
                                                cardSubTitle: '0',
                                                cardTextColor: Colors.grey[800],
                                                cardWidth: 170.0,
                                                cardheight: 92.0),
                                            ReportSubCards(
                                                cardColor: Color.fromARGB(
                                                    255, 2, 81, 73),
                                                cardTitle: 'Value',
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
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
