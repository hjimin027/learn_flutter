import 'package:contact/screen/column/column_practice.dart';
import 'package:contact/screen/column/column_screen.dart';
import 'package:contact/screen/container/container_practice_screen.dart';
import 'package:contact/screen/container/container_screen.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ContainerScreen();
              },));
            }, child: Text("Container")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ContainerPracticeScreen();
              },));
            }, child: Text("Container Practice")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColumnScreen();
              },));
            }, child: Text("Column")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColumnPractice();
              },));
            }, child: Text("Column_Practice")),
          ],
        ),
      ),
    );
  }
}