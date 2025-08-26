import 'package:contact/screen/network/json_model.dart';
import 'package:dio/dio.dart';
// 멤버 목록 조회
import 'package:flutter/material.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://d0a701c36a9e.ngrok-free.app"));
  // https://d0a701c36a9e.ngrok-free.app
  // https://9d8cdaee67f2.ngrok-free.app

  Dio dio2 = Dio(BaseOptions(baseUrl: "https://online-lecture-data.s3.ap-northeast-2.amazonaws.com/data.json"));


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("회원 목록 조회"),),
      body: Column(children: [
        ElevatedButton(onPressed: () {
          dio.get('/api/v1/member/all');
        }, child: Text('data')),
        
        ElevatedButton(onPressed: () {
          dio2.get("").then((value) {
            print(value);
            value.data;
            var jsonModel = JsonModel.fromJson(value.data);
            print(jsonModel);
          },);
        }, child: Text("Get JSON"))
      ],),
    );
  }
}
