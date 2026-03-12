import 'package:flutter/material.dart';

class HomePage_ListView extends StatefulWidget {
  const HomePage_ListView({super.key});

  @override
  State<HomePage_ListView> createState() => _HomePage_ListViewState();
}

class _HomePage_ListViewState extends State<HomePage_ListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module_11_class_1"),
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.blue.shade300,
            shadowColor: Colors.black,
            elevation: 5,
            child: ListTile(
              title: Text('Hasnat', style: TextStyle(fontSize: 15 ,color: Colors.black),),
              subtitle: Text('0199138266', style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.phone_android, color: Colors.black,),
              trailing: Icon(Icons.delete, color: Colors.red,),
            ),
          ),
          Card(
            color: Colors.blue.shade300,
            shadowColor: Colors.black,
            elevation: 5,
            child: ListTile(
              title: Text('Hasnat', style: TextStyle(fontSize: 15 ,color: Colors.black),),
              subtitle: Text('0199138266', style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.phone_android, color: Colors.black,),
              trailing: Icon(Icons.delete, color: Colors.red,),
            ),
          ),
          Card(
            color: Colors.blue.shade300,
            shadowColor: Colors.black,
            elevation: 5,
            child: ListTile(
              title: Text('Hasnat', style: TextStyle(fontSize: 15 ,color: Colors.black),),
              subtitle: Text('0199138266', style: TextStyle(color: Colors.black),),
              leading: Icon(Icons.phone_android, color: Colors.black,),
              trailing: Icon(Icons.delete, color: Colors.red,),
            ),
          ),
        ],
      ),
    );
  }
}