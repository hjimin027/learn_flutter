import 'package:contact/screen/network/member_list_screen.dart';
import 'package:contact/screen/network/member_register_screen.dart';
import 'package:flutter/material.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Network"),),
      body: Column(children: [
        ElevatedButton(onPressed: () {
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) {
                return MemberListScreen();
              },)
          );
        }, child: Text("회원목록 조회")),
        ElevatedButton(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return MemberRegisterScreen();
              },)
          ).then((value) {
            if (value != null && value is bool && value){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("등록 성공")));
            }
          },);
        }, child: Text("회원 등록"))
      ],)
    );
  }
}
