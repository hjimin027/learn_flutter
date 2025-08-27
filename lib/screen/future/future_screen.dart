import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: () async {
            print("시작 전");

            String value = await futureBasic();
            // await Future.delayed(Duration(milliseconds: 1000), () {
            //   print("Delay 끝");
            // },); // 플러터에서 딜레이를 주는 함수
            print("시작 후: $value");
          }, child: Text("Delay"))
        ],
      ),
    );
  }
}


// Future를 리턴하는 경우 Future를 리턴하거나
// Future를 리턴하지 않으면 반드시 async를 필요
/// 함수를 호출하면 1.5초 후 result를 return하는 함수
// Future를 리턴하는 함수는 then을 사용할 수 있음
Future<String> futureBasic() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return "result";
}