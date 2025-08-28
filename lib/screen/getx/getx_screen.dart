import 'package:contact/screen/getx/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxScreen extends StatefulWidget {
  const GetxScreen({super.key});

  @override
  State<GetxScreen> createState() => _GetxScreenState();
}

class _GetxScreenState extends State<GetxScreen> {
  @override
  Widget build(BuildContext context) {
    MyController.to;
    return Scaffold(
      appBar: AppBar(title: Text("GetX"),),
      body: Column(
        children: [
          // SetState 안해도 숫자가 올라서 반영됨
          /// GetX 상태관리의 두 가지 요소
          /// 1. Rx로 선언된 변수(my_controller.dart에서 'RxInt count = 0.obs;')
          /// 2. Obx로 감쌀 것
          Obx(() {
            return Text(MyController.to.count.value.toString());
          }),

          ElevatedButton(onPressed: () {
            MyController.to.countUp();
          }, child: Text("Count Up")),
          ElevatedButton(onPressed: () {

          }, child: Text("Move"))
        ],
      ),
    );
  }
}
