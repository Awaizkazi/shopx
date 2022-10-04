import 'package:flutter/material.dart';

class UnKnown extends StatelessWidget {
  const UnKnown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnKnown SCreen'),
      ),
      body: Column(
        children: [
          Text('Unknown Route Screen'),
        ],
      ),
    );
  }
}
