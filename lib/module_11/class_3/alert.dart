import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlertDialog() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.delete),
          title: Text('Are you sure?'),
          content: Text('Enter your email, phone number and address.'),
          actions: [
            TextButton(onPressed: () {}, child: Text('Yes')),
            TextButton(onPressed: () {}, child: Text('No')),
          ],
        ),
      );
    }

    void showSimpleDialog() {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text('This is Simple Dialog'),
          children: [Text('Heloow this is simple dialog'), TextField()],
        ),
      );
    }

    void showSnackbar() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Iten Deleted'),
          action: SnackBarAction(label: 'Undo', onPressed: () {}),
        ),
      );
    }

    void showBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Text('Choose Option'),
              ListTile(title: Text("option-1")),
              ListTile(title: Text("option-2")),
              ListTile(title: Text("option-3")),
              ListTile(title: Text("option-4")),
              ListTile(title: Text("option-5")),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('Alert')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlertDialog();
              },
              child: Text('Alert Dialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showSimpleDialog();
              },
              child: Text('Simple Dialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showSnackbar();
              },
              child: Text('Simple Snackbar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showBottomSheet();
              },
              child: Text('Bottom Sheet'),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('test');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
