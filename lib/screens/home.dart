import 'package:flutter/material.dart';
import 'package:myfirst_flutter_app/components/todo_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<TodoList> todoList = [];
  TextEditingController titleTEC = TextEditingController();
  TextEditingController descriptionTEC = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("To-Do List", style: TextStyle(
          color: Colors.blue,
        ),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: titleTEC,
                    decoration: InputDecoration(
                      hintText: "Add Title",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xff21b5b6)),
                      ),
                    ),
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return "Enter a Title";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: descriptionTEC,
                    decoration: InputDecoration(
                      hintText: "Add Description",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, color: Color(0xff21b5b6)),
                      ),
                    ),
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return "Enter a Description";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        TodoList todoAdd = TodoList(
                            title: titleTEC.text.trim(),
                            description: descriptionTEC.text.trim());
                        todoList.add(todoAdd);
                      }
                      titleTEC.clear();
                      descriptionTEC.clear();
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),
                    child: const Text("Add"),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: todoList.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white70,
                  child: ListTile(
                    onLongPress: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("Alert"),
                            actions: [
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      editTodoList(index);
                                      setState(() {});
                                    },
                                    child: const Text(
                                      "Edit",
                                      style: TextStyle(
                                        color: Color(0xff21b5b6),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 130),
                                  TextButton(
                                    onPressed: () {
                                      todoList.removeAt(index);
                                      setState(() {});
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Delete",
                                      style: TextStyle(
                                        color: Color(0xff21b5b6),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(todoList[index].title),
                    subtitle: Text(todoList[index].description),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void editTodoList(int index) {
    TextEditingController updatedTitleTEC = TextEditingController();
    TextEditingController updatedDescriptionTEC = TextEditingController();

    updatedTitleTEC.text = todoList[index].title;
    updatedDescriptionTEC.text = todoList[index].description;

    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: updatedTitleTEC,
                decoration: InputDecoration(
                  hintText: "Edit Title",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff21b5b6)),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: updatedDescriptionTEC,
                decoration: InputDecoration(
                  hintText: "Edit Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder:  const OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xff21b5b6)),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  if (updatedTitleTEC.text.isNotEmpty &&
                      updatedDescriptionTEC.text.isNotEmpty) {
                    todoList[index].title = updatedTitleTEC.text;
                    todoList[index].description = updatedDescriptionTEC.text;
                    Navigator.pop(context);
                    setState(() {});
                  }
                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                child: const Text("Edit Done"),
              ),
            ],
          ),
        );
      },
    );
  }
}
