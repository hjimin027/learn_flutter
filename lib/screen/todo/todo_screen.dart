import 'package:contact/screen/todo/todo_model.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<TodoModel> todoList = [
    TodoModel("운동하기", false),
    TodoModel("공부하기", true),
    TodoModel("게임하기", false),
    TodoModel("잠자기", true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ToDo"),),
      body: Column(children: [
        Row(children: [
          Expanded(child: TextFormField()), //Expanded: 현재 주어진 영역을 가로로 꽉 채우기
          TextButton(onPressed: () {

          }, child: Text("등록"))
        ],),
        // Column 안에 스크롤이 있는 위젯이 있으면 -> 높이값을 설정해줘야 함
        Expanded(
          child: ListView.separated(itemBuilder: (context, index) {
            var model = todoList[index];
            return Row(children: [
              Checkbox(value: true, onChanged: (value) {

              },),
              Expanded(child: Text("내용")),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.delete))
            ],);
          }, separatorBuilder: (context, index) {
            return Container(height: 2, color: Colors.grey,);
          }, itemCount: 5),
        )
      ],),
    );
  }
}
