import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image"),),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey,
                width: 200, height: 200,
                child: Image.network('https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png'),
              ),

              SizedBox(height: 30,),

              Container(
                color: Colors.grey,
                width: 200, height: 200,
                child: Image.network('https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png',
                // https 에러 발생. web security 때문에 크롬으로 실행해서. jinhan38.com/168 티스토리. 에뮬레이터 실행하면 잘 될 거임.
                fit: BoxFit.fitHeight,)
              ),

              SizedBox(height: 30,),

              Container(
                  color: Colors.grey,
                  width: 200, height: 200,
                  child: Image.network('https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png',
                    // https 에러 발생. web security 때문에 크롬으로 실행해서. jinhan38.com/168 티스토리. 에뮬레이터 실행하면 잘 될 거임.
                    fit: BoxFit.fitWidth,)
              ),

              SizedBox(height: 30,),

              Container(
                  color: Colors.grey,
                  width: 200, height: 200,
                  child: Image.network('https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png',
                    // https 에러 발생. web security 때문에 크롬으로 실행해서. jinhan38.com/168 티스토리. 에뮬레이터 실행하면 잘 될 거임.
                    fit: BoxFit.cover,
                  alignment: Alignment.topRight,)
              )
            ],
          ),
        ),
      ),
    );
  }
}
