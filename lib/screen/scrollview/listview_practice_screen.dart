import 'package:flutter/material.dart';

class ListviewPracticeScreen extends StatelessWidget {
  const ListviewPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> dataList = [];
    for (int i=0; i<30; i++){
      dataList.add(i);
    }

    return Scaffold(
      appBar: AppBar(title: Text("ListView Practice"),),
      body: ListView.builder(itemCount: dataList.length, itemBuilder: (context, index) {
        return Center(child: Text(dataList[index].toString()));
      })
    );
  }
}
