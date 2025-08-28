import 'package:contact/screen/getx/my_controller.dart';
import 'package:flutter/material.dart';

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
    );
  }
}
