import 'package:flutter/material.dart';


class HomepageListviewBuilder extends StatefulWidget {
  const HomepageListviewBuilder({super.key});

  @override
  State<HomepageListviewBuilder> createState() => _HomepageListviewBuilderState();
}

class _HomepageListviewBuilderState extends State<HomepageListviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('ListViewBuilder'),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index){
            return Card(

              color: Colors.blue.shade300,
              shadowColor: Colors.black,
              elevation: 5,
              child: ListTile(
                title: Text('Hasnat $index', style: TextStyle(fontSize: 15 ,color: Colors.black),),
                subtitle: Text('0199138266', style: TextStyle(color: Colors.black),),
                leading: Icon(Icons.phone_android, color: Colors.black,),
                trailing: Icon(Icons.delete, color: Colors.red,),
              ),
            );
          }

      ),
    );
  }
}
