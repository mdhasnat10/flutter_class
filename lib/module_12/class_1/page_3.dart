import 'package:flutter/material.dart';
import 'package:module11_class1/module_12/class_1/page_1.dart';
import 'package:module11_class1/module_12/class_1/page_2.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is Page-3",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
              child: Text("Page-1"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(name: 'Hasnat',),));
              },
              child: Text("Page-2"),
            ),
          ],
        ),
      ),
    );
  }
}
