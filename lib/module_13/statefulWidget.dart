import 'package:flutter/material.dart';

class Module13_Class1 extends StatefulWidget {
  const Module13_Class1({super.key});

  @override
  State<Module13_Class1> createState() => _Module13_Class1State();
}

class _Module13_Class1State extends State<Module13_Class1> {
  int number = 0;
  bool isShow = false;
  String LongText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not ";
  bool isReadMore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number++;
                      print(number);
                    });
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number--;
                      print(number);
                    });
                  },
                  child: Text('-'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: isShow,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Password',
                  hintStyle: TextStyle(color: Colors.blue),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isShow = !isShow;
                      });
                    },
                    icon: Icon(
                      isShow ? Icons.visibility_off : Icons.visibility,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  isShow = !isShow;
                });
              },
              icon: Icon(
                isShow ? Icons.favorite_border : Icons.favorite,
                color: Colors.red,
                size: 70,
              ),
            ),

            Column(
              children: [
                Text(
                  isReadMore
                      ? LongText
                      : '''Lorem Ipsum is simply dummy text of the printing and typesetting industry.''',
                  style: TextStyle(color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isReadMore = !isReadMore;
                    });
                  },
                  child: Text(
                    isReadMore ? 'Hide' : 'Read More',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
