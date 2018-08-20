import 'package:flutter/material.dart';
import './ui/ui.dart';
import './ui/file.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  bool value = true;

  void changeView() {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("${value == true ? "List" : "Profile"}"),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                value == true ? Icons.looks_one : Icons.looks_two,
                color: Colors.white,
              ),
              onPressed: () {
                changeView();
              }),
        ),
        body: value == true ? Ui() : File(),
      ),
    );
  }
}
