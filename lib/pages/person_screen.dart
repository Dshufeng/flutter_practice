import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person Screen'),
      ),
      body: Center(
        child: Text('person screen'),
      ),
    );
  }
}