import 'dart:async';

import 'package:flutter/material.dart';

class Lifecycle extends StatefulWidget {
  // final String name;
  Lifecycle({super.key,}) {
    print('1 Constructor');
  }

  @override
  State<Lifecycle> createState() {
    print('2 createstate');

    return _LifecycleState();
  }
}

class _LifecycleState extends State<Lifecycle> {
  String name = 'Hasnat';
  int seconds = 0;
  Timer? time;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('3 initSatte');
    name = 'Sayem';
    seconds = 10;

    time = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        seconds++;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('4 didChanged');
  }

  @override
  Widget build(BuildContext context) {
    print('5 build');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name, style: TextStyle(fontSize: 35, color: Colors.black)),
            Text(
              'Time running: ${seconds}',
              style: TextStyle(fontSize: 35, color: Colors.black),
            ),

            ElevatedButton(onPressed: () {
              name = 'tafif';
            }, child: Text('Changed Name'))
          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant Lifecycle oldWidget) {
    super.didUpdateWidget(oldWidget);
      
    


  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
