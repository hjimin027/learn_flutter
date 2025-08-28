import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News"),),
      body: ListView.builder(itemCount: 10, itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(color: Colors.grey, height: 100, width: 100),
              Column(
                children: [
                  Text("Title", style: TextStyle(fontWeight: FontWeight.bold), maxLines: 1, overflow: TextOverflow.ellipsis,),
                  Text("description", maxLines: 2, overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 10,),
                  Text("Company", style: TextStyle(fontSize: 10, color: Colors.grey), maxLines: 1,),
                  Text("Date", style: TextStyle(fontSize: 10, color: Colors.grey), maxLines: 1,),
                ],
              )
            ],
          ),
        );
      },),
    );
  }
}
