import 'package:flutter/material.dart';
import 'package:module11_class1/module_11/Class_1/HomePage_ListView_Builder.dart';
import 'package:module11_class1/module_11/Class_2/custom_widget.dart';
import 'package:module11_class1/module_11/Class_2/stack_positioned.dart';
import 'package:module11_class1/module_11/class_3/alert.dart';
import 'package:module11_class1/module_12/class_1/page_1.dart';
import 'package:module11_class1/module_12/class_1/page_2.dart';
import 'package:module11_class1/module_12/class_1/page_3.dart';
import 'package:module11_class1/module_12/class_2/module_12_class_2.dart';
import 'package:module11_class1/module_12/class_3/animation.dart';

import 'module_11/Class_1/GridView_Builder.dart';
import 'module_11/Class_1/HomePage_GridView.dart';
import 'module_11/Class_1/Home_page_listView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/page-1': (context) => Page1(),
        '/page-3': (context) => Page3(),
        '/page-2': (context) => Page2(name: 'Hasnat'),
        '/Module12Class3' : (context) => Module12Class3(),
      },
      initialRoute: '/Module12Class3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurpleAccent,
        primarySwatch: Colors.deepPurple,

        scaffoldBackgroundColor: Colors.blue.shade100,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
          centerTitle: true,
        ),
      ),

      title: 'Hansat JU',
      // home: Module12Class3(),
    );
  }
}
