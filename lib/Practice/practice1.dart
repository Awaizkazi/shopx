import 'package:flutter/material.dart';

class LayoutBuilderPractice extends StatelessWidget {
  const LayoutBuilderPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder Practice'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return _buildWideContainer();
        } else {
          return _buildNormalContainer();
        }
      }),
    );
  }

  Widget _buildWideContainer() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.amber,
            width: 100.0,
            height: 100.0,
          ),
          Container(
            color: Colors.red,
            width: 100.0,
            height: 100.0,
          ),
        ],
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Container(
      color: Colors.red,
      width: 100.0,
      height: 100.0,
    );
  }
}
