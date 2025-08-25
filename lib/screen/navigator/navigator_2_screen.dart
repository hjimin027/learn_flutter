import 'package:flutter/material.dart';

class Navigator2Screen extends StatefulWidget {
  const Navigator2Screen({required this.count, super.key});
  final int count;

  @override
  State<Navigator2Screen> createState() => _Navigator2ScreenState();
}

class _Navigator2ScreenState extends State<Navigator2Screen> {
  int count2 = 0;

  // initState 안에서는 setState를 사용할 수 없음
  // stateState는 build가 완료된 후에 호출할 수가 있음
  @override
  void initState(){
    count2 = widget.count;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Navigator2"),),
      body: Column(
        children: [
          Text(count2.toString()),
          ElevatedButton(onPressed: () {
            count2 += 2;
            setState(() {});
          }, child: Text("Count Up")),
          ElevatedButton(onPressed: () {
            //뒤로가기
            Navigator.pop(context, count2);
          }, child: Text("pop"))
        ],
      )
    );
  }
}
