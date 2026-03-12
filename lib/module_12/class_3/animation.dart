import 'package:flutter/material.dart';

class Module12Class3 extends StatefulWidget {
  const Module12Class3({super.key});

  @override
  State<Module12Class3> createState() => _Module12Class3State();
}

class _Module12Class3State extends State<Module12Class3> {
  bool selected = false;
  bool showMassege = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: selected ? 100 : 150,
                width: selected ? 100 : 150,

                decoration: BoxDecoration(
                  color: selected ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                height: selected ? 100 : 150,
                width: selected ? 100 : 150,
                decoration: BoxDecoration(
                  color: selected ? Colors.red : Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showMassege = !showMassege;
                });
              },
              child: Text('Add to cart'),
            ),

            AnimatedOpacity(
              opacity: showMassege ? 1 : 0,
              duration: Duration(seconds: 3),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Added to cart', style: TextStyle(fontSize: 20)),
                ),
              ),
            ),

            SizedBox(height: 20),

            AnimatedAlign(
              alignment: showMassege ? Alignment.topRight : Alignment.topLeft,
              duration: Duration(seconds: 4),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://miro.medium.com/1*Ld1KM2WSfJ9YQ4oeRf7q4Q.jpeg',
                ),
              ),
            ),

            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Toggle Button'),
                  ),
                  AnimatedPositioned(
                    duration: Duration(seconds: 3),
                    bottom: showMassege ? 0 : -120,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      // width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple,
                      ),
                      alignment: Alignment.center,
                      child: Text('Test'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
