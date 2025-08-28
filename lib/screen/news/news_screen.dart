import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  /// GET 방식
  /// https://newsapi.org/v2/everything?q=tesla&from=2025-07-28&sortBy=publishedAt&apiKey=_____
  /// https://newsapi.org => 도메인
  /// /v2/everything => path 도메인: 도메인부터 ? 전까지
  /// ? 이후 => 쿼리query
  /// 쿼리 분석: q=tesla, from=2025-06-28... 값 전달
  ///
  /// GET과 POST의 차이
  /// Get은 인터넷 주소창에 검색해도 호출 가능
  /// Post는 인터넷 주소창에서 호출 불가능

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 130, height: 130, color: Colors.grey),
                SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "타이틀",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Text("부제", style: TextStyle(fontSize: 17), maxLines: 2),
                    Text("언론사명", style: TextStyle(fontSize: 14)),
                    Text("날짜", style: TextStyle(fontSize: 14)),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}