import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Sheet',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Sheet'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Bottom Sheet'),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            leading: Icon(Icons.wb_sunny_outlined),
                            title: Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.wb_sunny),
                            title: Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(
                                ThemeData.dark(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    // barrierColor: Colors.grey.shade100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      side: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    //  isDismissible: true,
                    // enableDrag: false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
