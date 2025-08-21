import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text"),),
      body: SizedBox(
        width: double.infinity, //현재 디바이스의 화면을 꽉 채워라
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Text 위젯 1",
              style: TextStyle(color: Colors.grey,
                  fontSize: 20
              ),),
            Text("Text 위젯 1입니다",
              style: TextStyle(color: Colors.grey,
                  fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),

            // FontWeight = 400:normal, 500:medium, 700:bold
            Text("텍스트 위젯입니다. 텍스트 위젯입니다. 텍스트 위젯입니다. 텍스트 위젯입니다. 텍스트 위젯입니다. 텍스트 위젯입니다. 텍스트 위젯입니다. 텍스트 위젯입니다. 텍스트 위젯입니다. ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 24),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
