import 'package:flutter/material.dart';

class COustom_widget extends StatelessWidget {
  const COustom_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom_Widget')),

      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://www.hoteldel.com/wp-content/uploads/2021/01/hotel-del-coronado-views-suite-K1TOS1-K1TOJ1-1600x900-1.jpg',
                  height: 235,
                ),
                Container(height: 235, color: Colors.black.withOpacity(0.3)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Positioned(
                      top: 20,
                      // left: 20,
                      child: Container(
                        
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Text('DHAKA', style: TextStyle(fontSize: 15),))),

                        Text('')
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
