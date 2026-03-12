import 'package:flutter/material.dart';
import 'package:module11_class1/module_11/Class_1/HomePage_GridView.dart';
import 'package:module11_class1/module_11/Class_1/Home_page_listView.dart';
import 'package:module11_class1/module_11/class_3/alert.dart';
import 'package:module11_class1/module_12/class_1/page_1.dart';
import 'package:module11_class1/module_12/class_1/page_2.dart';

class Module12Class2 extends StatelessWidget {
  const Module12Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),

          bottom: TabBar(
            indicator: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(10),
            ),
            indicatorPadding: EdgeInsetsGeometry.all(-5),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.purple,
            unselectedLabelStyle: TextStyle(
              fontSize: 25,
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
            ),
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.favorite), text: 'Favorite'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //we use page also
            // HomePage_ListView(),
            // HomepageGridview(),
            // HomePage_ListView(),

            // Text('Home', style: TextStyle(fontSize: 25,color: Colors.red),),
            // Text('Settings', style: TextStyle( fontSize: 25 ,color: Colors.blue),),

            // Text('Favourite', style: TextStyle(fontSize: 25 ,color: Colors.deepPurple),),
            Alert(),
            Page1(),
            Page2(name: 'name'),
          ],
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundImage: NetworkImage(
                        'https://tse1.mm.bing.net/th/id/OIP.QqmNxlLVthb_NY9bq4gSFgHaH_?rs=1&pid=ImgDetMain&o=7&rm=3',
                      ),
                    ),
                    Text(
                      'Md ABu Hasnat',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'mdhasnat.ju@gmail.com',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),

              ListTile(
                iconColor: Colors.black,

                leading: Icon(Icons.home),
                title: Text('Home', style: TextStyle(color: Colors.black)),
              ),
              ListTile(
                iconColor: Colors.black,

                leading: Icon(Icons.home),
                title: Text('Home', style: TextStyle(color: Colors.black)),
              ),
              ListTile(
                iconColor: Colors.black,

                leading: Icon(Icons.home),
                title: Text('Home', style: TextStyle(color: Colors.black)),
              ),
              ListTile(
                iconColor: Colors.black,

                leading: Icon(Icons.home),
                title: Text('Home', style: TextStyle(color: Colors.black)),
              ),
              ListTile(
                iconColor: Colors.black,

                leading: Icon(Icons.home),
                title: Text('Home', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}
