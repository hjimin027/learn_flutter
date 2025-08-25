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
              Checkbox(value: model.checked, onChanged: (value) {
                // setState: 상태가 변경되었음을 알려줌 -> build 재실행 (변경되면 화면 업데이트)
                setState(() {
                  // model.checked = value!; 두 방법 둘 중 하나
                  model.checked = !model.checked;
                });
              },),
              Expanded(child: Text(model.name)),
              IconButton(onPressed: () {
                setState(() {
                  // print("removed index: $index"); 삭제되는 인덱스 확인용
                  todoList.removeAt(index);
                });
              }, icon: Icon(Icons.delete))
            ],);
          }, separatorBuilder: (context, index) {
            return Container(height: 2, color: Colors.grey,);
          }, itemCount: todoList.length),
          // itemCount: 인덱스로 접근. 하드코딩ㄴㄴ todoList.length로 변경
        )
      ],),
    );
  }
}
