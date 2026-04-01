import 'package:flutter/material.dart';
import 'package:module11_class1/module_14/sfw_tabbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigateNestPage();
  }

  void navigateNestPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Module14_class1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red.shade300, Colors.blue.shade300],
          ),
        ),

        child: Center(
          child: Text(
            'Hellow Hasnat',
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
