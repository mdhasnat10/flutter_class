import 'dart:math';
import 'package:flutter/material.dart';
import 'package:module11_class1/module_16/db/task_database.dart';
import 'package:module11_class1/module_16/model/task_model.dart';

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  TextEditingController controller = TextEditingController();

  List<Task> tasks = [];

  Future<void> refreshTask() async {
    tasks = await TaskDatabase.getTask();
    setState(() {});
  }

  Future<void> addTask() async {
    if (controller.text.isNotEmpty) {
      TaskDatabase.insertTask(Task(title: controller.text, isDone: false));
      controller.clear();
      refreshTask();
    }
  }

  Future<void> deleteTask(int id) async {
    await TaskDatabase.deleteTask(id);
    refreshTask();
  }

  Future<void> toggleTaskStatus(Task task) async {
    await TaskDatabase.updateTask(
      Task(id: task.id, title: task.title, isDone: !task.isDone),
    );
    refreshTask();
  }

  // Future<void> editDialog(Task task) async {
  //   TextEditingController controller = TextEditingController();
  //   await TaskDatabase.updateTask(
  //     Task(id: task.id, title: task.title, isDone: !task.isDone),
  //   );
  //   refreshTask();
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task With DB')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              bottom: 10,
              right: 10,
              top: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),

                    controller: controller,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black),
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: addTask,
                  icon: Icon(Icons.add, color: Colors.black),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,

              itemBuilder: (context, index) {
                final task = tasks[index];
                return Dismissible(
                  key: Key(task.id.toString()),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  onDismissed: (_) {
                    deleteTask(task.id!);
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Task deleted')));
                  },
                  child: Card(
                    child: ListTile(
                      leading: Checkbox(
                        activeColor: Colors.blue,
                        checkColor: Colors.white,
                        side: BorderSide(color: Colors.black),
                        value: task.isDone,
                        onChanged: (_) {
                          toggleTaskStatus(task);
                        },
                      ),
                      title: Text(
                        task.title,
                        style: TextStyle(
                          color: task.isDone ? Colors.grey : Colors.black,
                          fontSize: 18,
                          decoration: task.isDone
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: .min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit, color: Colors.black),
                          ),
                          IconButton(
                            onPressed: () {
                              deleteTask(task.id!);
                            },
                            icon: Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
