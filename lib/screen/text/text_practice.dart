import 'package:flutter/material.dart';

class TextPractice extends StatelessWidget {
  const TextPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Practice"),),
      body: Text("Text위젯 실습입니다.Text위젯 실습입니다.Text위젯 실습입니다.Text위젯 실습입니다.Text위젯 실습입니다.Text위젯 실습입니다.",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.deepOrange,
        letterSpacing: 2.5
      ),
      maxLines: 1,
          overflow: TextOverflow.ellipsis),
    );
  }
}
