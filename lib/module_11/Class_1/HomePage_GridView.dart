import 'package:flutter/material.dart';

class HomepageGridview extends StatelessWidget {
  const HomepageGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.pink
              ,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.purple,
            ),


          ],

      ),
    );
  }
}


