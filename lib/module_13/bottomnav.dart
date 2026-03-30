import 'package:flutter/material.dart';
import 'package:module11_class1/module_11/Class_1/GridView_Builder.dart';
import 'package:module11_class1/module_11/Class_1/HomePage_GridView.dart';
import 'package:module11_class1/module_11/Class_1/HomePage_ListView_Builder.dart';
import 'package:module11_class1/module_11/class_3/alert.dart';

class Module13Class3 extends StatefulWidget {
  const Module13Class3({super.key});

  @override
  State<Module13Class3> createState() => _Module13Class3State();
}

class _Module13Class3State extends State<Module13Class3> {
  int _selectedIndex = 0;

  List _screens = [
    HomepageGridview(),
    HomepageListviewBuilder(),
    Alert(),
    GridviewBuilder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue.shade500,
            Colors.purple.shade300
          ])
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: Colors.transparent,
            indicatorColor: Colors.blue,
            labelTextStyle: MaterialStateProperty.resolveWith((state) {
              if (state.contains(MaterialState.selected)) {
                return TextStyle(color: Colors.white, fontSize: 20);
              } else {
                return TextStyle(color: Colors.black);
              }
            }),
            iconTheme: MaterialStateProperty.resolveWith((state) {
              if (state.contains(MaterialState.selected)) {
                return IconThemeData(color: Colors.white, size: 20);
              } else {
                return IconThemeData(color: Colors.black, );
              }
            }),
          ),
          child: NavigationBar(
            selectedIndex: _selectedIndex,
        
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
        
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.inbox), label: 'Inbox'),
              NavigationDestination(
                icon: Icon(Icons.account_balance_wallet),
                label: 'Wallet',
              ),
              NavigationDestination(icon: Icon(Icons.person), label: 'Account'),
            ],
          ),
        ),
      ),
    );
  }
}
