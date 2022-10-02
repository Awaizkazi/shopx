import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'ShopX',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'avenir',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.view_list_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.grid_view),
                ),
              ],
            ),
          ),
          StaggeredGrid.count(crossAxisCount: 2)
        ],
      ),
    );
  }
}
