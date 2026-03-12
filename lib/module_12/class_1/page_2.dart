import 'package:flutter/material.dart';
import 'package:module11_class1/module_12/class_1/page_1.dart';
import 'package:module11_class1/module_12/class_1/page_3.dart';

class Page2 extends StatelessWidget {
  final String name;
  const Page2({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name, style: TextStyle(fontSize: 50, color: Colors.black)),
            Text(
              "This is Page-2",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, '/page-1',
                );
              },
              child: Text("Page-1"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, '/page-3',
                );
              },
              child: Text("Page-3"),
            ),
          ],
        ),
      ),
    );
  }
}
