import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:module11_class1/module_17/models/postmodel.dart';
import 'package:http/http.dart' as http;
import 'package:module11_class1/module_17/utils/urls.dart';

class ApiView extends StatefulWidget {
  const ApiView({super.key});

  @override
  State<ApiView> createState() => _ApiViewState();
}

class _ApiViewState extends State<ApiView> {
  List<postModel> posts = [];
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  Future<void> addPost() async {
    final response = await http.post(
      Uri.parse(Urls.createPost),
      body: json.encode({
        'title': titleController.text,

        'body': bodyController.text,
      }),
    );

    if (response.statusCode == 201 || response.statusCode == 200) {
      await fetchPosts();
    }
  }

  showAddPostDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Post'),
          content: Column(
            mainAxisSize: .min,
            children: [
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: bodyController,
                decoration: InputDecoration(labelText: 'Body'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Add', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse(Urls.getPost));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      setState(() {
        posts = data.map((e) => postModel.fromJson(e)).toList();
      });
    } else {}
  }

  Future<void> deletePosts(String id) async {
    final response = await http.delete(Uri.parse(Urls.deletePost(id)));
    if (response.statusCode == 200) {
      await fetchPosts();
    } else {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post')),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            child: ListTile(
              title: Text(
                post.title.toString(),
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                post.body.toString(),
                style: TextStyle(color: Colors.black),
              ),
              trailing: IconButton(
                onPressed: () {
                  deletePosts(post.id.toString());
                },
                icon: Icon(Icons.delete, color: Colors.red),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue.shade200,
        foregroundColor: Colors.white,
        hoverColor: Colors.blue,
        onPressed: () {
          showAddPostDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
