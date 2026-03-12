import 'package:flutter/material.dart';
import 'package:module11_class1/module_12/class_1/page_2.dart';
import 'package:module11_class1/module_12/class_1/page_3.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is Page-1",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(name: 'Hasnat'),
                  ),
                );
              },
              child: Text("Without Back Option"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page2(name: 'Hasnat'),
                  ),
                );
              },
              child: Text("Page-2"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              child: Text("Page-3"),
            ),

            Divider(),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page-2');
              },
              child: Text('Navi 2.0 Page 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page-2');
              },
              child: Text('Navi 2.0 Page 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/page-2', (route) => false,);
              },
              child: Text('Navi 2.0 Page-2 RemoveUntill'),
            ),
          ],
        ),
      ),
    );
  }
}
