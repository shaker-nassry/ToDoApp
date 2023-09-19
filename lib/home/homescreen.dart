import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
static const String routename = "Home Screen" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        shape: Border(bottom: BorderSide(color: Colors.black87 , width: 5)),
        title: Text('To Do List'),
      ),
      body: Container(
        height: 100,
        color: Colors.blue,
      ),
    );
  }
}
