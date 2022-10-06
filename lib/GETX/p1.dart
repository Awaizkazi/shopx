import 'package:flutter/material.dart';

class Ex extends StatelessWidget {
  const Ex({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Container(
            width: 200,
            height: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
