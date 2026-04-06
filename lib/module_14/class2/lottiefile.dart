import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:module11_class1/module_14/sfw_tabbar.dart';

class LottieFile extends StatefulWidget {
  const LottieFile({super.key});

  @override
  State<LottieFile> createState() => _LottieFileState();
}

class _LottieFileState extends State<LottieFile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    navigateNestPage();
  }

  void navigateNestPage() {
    Future.delayed(Duration(seconds: 10), () {
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

        child: Lottie.asset('assets/Revenue.json', width: 26)
      ),
    );
  }
}
