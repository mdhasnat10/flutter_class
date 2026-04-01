import 'package:flutter/material.dart';

class Module14_class1 extends StatefulWidget {
  const Module14_class1({super.key});

  @override
  State<Module14_class1> createState() => _Module14_class1State();
}

class _Module14_class1State extends State<Module14_class1>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Tabbar', style: TextStyle(color: Colors.black),)),
      body: Column(
        children: [
          // Container(
          //   color: Colors.white,
          //   height: 50,
          // ),
          Container(
            color: Colors.white,
            child: TabBar(
              indicatorColor: Colors.lightBlue,
              // labelStyle: TextStyle(fontSize: 20),
              // indicatorWeight: BorderSide.strokeAlignCenter,
              labelColor: Colors.lightBlue,
              unselectedLabelColor: Colors.black,
              controller: _tabController,
              unselectedLabelStyle: TextStyle(fontSize: 12),
              dividerColor: Colors.transparent,
              
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Profile'),
                Tab(text: 'Setting'),
                Tab(text: 'Inbox'),
              ],
            ),
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Center(
                  child: Text(
                    'Home View',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Center(
                  child: Text(
                    'Profile View',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Center(
                  child: Text(
                    'Setting View',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Center(
                  child: Text(
                    'Inbox View',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
