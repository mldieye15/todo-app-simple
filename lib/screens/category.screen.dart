import 'package:flutter/material.dart';
import 'package:todoapp_sqf/screens/home.screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                ),
                child: const Text("Save"),
              ),
            ],
            title: const Text("Categories Form"),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Write a category",
                      labelText: "Category",
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Write a description",
                      labelText: "Description",
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomeScreen())),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
            elevation: MaterialStateProperty.all(0),
            /*padding: MaterialStateProperty.all(EdgeInsets.all(50)),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 30),
            ),*/
          ),
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Categories',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: const Center(
        child: Text(
          'Welcome to Categories screen',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 25,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
