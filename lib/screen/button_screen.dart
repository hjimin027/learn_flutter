import 'package:contact/screen/column/column_practice_screen.dart';
import 'package:contact/screen/column/column_screen.dart';
import 'package:contact/screen/container/container_practice_screen.dart';
import 'package:contact/screen/container/container_screen.dart';
import 'package:contact/screen/image/image_practice_screen.dart';
import 'package:contact/screen/image/image_screen.dart';
import 'package:contact/screen/row/column_row_practice_screen.dart';
import 'package:contact/screen/row/row_practice_screen.dart';
import 'package:contact/screen/row/row_screen.dart';
import 'package:contact/screen/text/text_practice.dart';
import 'package:contact/screen/text/text_screen.dart';
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
                return ColumnPracticeScreen();
              },));
            }, child: Text("Column_Practice")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RowScreen();
              },));
            }, child: Text("Row")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RowPracticeScreen();
              },));
            }, child: Text("Row Practice")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColumnRowPracticeScreen();
              },));
            }, child: Text("Column Row Practice")),
            SizedBox(height: 10),
            SizedBox(height: 10),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TextScreen();
              },));
            }, child: Text("Text")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TextPractice();
              },));
            }, child: Text("Text Practice")),
            SizedBox(height: 10),
            SizedBox(height: 10),
            SizedBox(height: 10),

            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ImageScreen();
              },));
            }, child: Text("Image")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ImagePracticeScreen();
              },));
            }, child: Text("Image Practice")),
          ],

        ),
      ),
    );
  }
}