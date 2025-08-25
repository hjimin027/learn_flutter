import 'package:contact/screen/column/column_practice_screen.dart';
import 'package:contact/screen/column/column_screen.dart';
import 'package:contact/screen/container/container_practice_screen.dart';
import 'package:contact/screen/container/container_screen.dart';
import 'package:contact/screen/image/image_practice_screen.dart';
import 'package:contact/screen/image/image_screen.dart';
import 'package:contact/screen/navigator/navigator_screen.dart';
import 'package:contact/screen/row/column_row_practice_screen.dart';
import 'package:contact/screen/row/row_practice_screen.dart';
import 'package:contact/screen/row/row_screen.dart';
import 'package:contact/screen/scrollview/listview_builder_screen.dart';
import 'package:contact/screen/scrollview/listview_practice_screen.dart';
import 'package:contact/screen/scrollview/listview_screen.dart';
import 'package:contact/screen/scrollview/scrollview_practice_screen.dart';
import 'package:contact/screen/scrollview/scrollview_screen.dart';
import 'package:contact/screen/stack/stack_practice_screen.dart';
import 'package:contact/screen/stack/stack_screen.dart';
import 'package:contact/screen/stateful/stateful_screen.dart';
import 'package:contact/screen/text/text_practice.dart';
import 'package:contact/screen/text/text_screen.dart';
import 'package:contact/screen/todo/todo_screen.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
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

              SizedBox(height: 10),
              SizedBox(height: 10),
              SizedBox(height: 10),

              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return StackScreen();
                },));
              }, child: Text("Stack")),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return StackPracticeScreen();
                },));
              }, child: Text("Stack Practice")),
              SizedBox(height: 10),
              SizedBox(height: 10),
              SizedBox(height: 10),

              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScrollviewScreen();
                },));
              }, child: Text("Scrollview")),
              SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ScrollviewPracticeScreen();
                },));
              }, child: Text("Scrollview Practice")),
              SizedBox(height: 10,),
              button(context, ListviewScreen(), "Listview"),
              button(context, ListviewBuilderScreen(), "ListView Builder"),
              button(context, ListviewPracticeScreen(), "Listview Practice"),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              button(context, StatefulScreen(), "Stateful"),
              SizedBox(height: 20,),
              button(context, NavigatorScreen(), "Navigator"),
              SizedBox(height: 30,),
              button(context, TodoScreen(), "ToDo")
            ],

          ),
        ),
      ),
    );
  }


  Widget button(BuildContext context, Widget child, String name) => ElevatedButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return child;
      },));
    }, child: Text(name));
}