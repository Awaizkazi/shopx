import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dialog Box using GETX',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dailog Box Using GETX'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                child: Text('Show Dialog'),
                onPressed: () {
                  // Get package works start here
                  // Get.defaultDialog();
                  Get.defaultDialog(
                    title: 'Congratulations',
                    titleStyle: TextStyle(fontSize: 20),
                    middleText: 'Congratulations you won 500 points',
                    middleTextStyle: TextStyle(fontSize: 17),
                    // barrierDismissible: false,
                    // cancel: ElevatedButton(
                    //   onPressed: () {},
                    //   child: Text('Cancel'),
                    // ),

                    // To customize the midddle text it overrides the middleText property by using content proerty
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 16,
                        ),
                        Text('Data Loading'),
                      ],
                    ),
                    // Default Cancel and Confirm Button
                    textCancel: 'Cancel',
                    // cancelTextColor: Colors.white,
                    textConfirm: 'Confirm',
                    confirmTextColor: Colors.pink,
                    buttonColor: Colors.amber,
                    // Customize the default cancel and Confirm button
                    // Overrides the default cancel and confrim
                    onCancel: () {},
                    onConfirm: () {},
                    /*  Overrides the deafult cancel, Confirm property*/
                    // confirm: Text(
                    //   'Confrim',
                    //   style: TextStyle(color: Colors.black),
                    // ),
                    // cancel: Text(
                    //   'Cancel',
                    //   style: TextStyle(color: Colors.black),
                    // ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('Action 1'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Action 2'),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
