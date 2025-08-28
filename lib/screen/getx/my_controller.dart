import 'package:get/get.dart';

class MyController extends GetxController {
  /// Get.find => Get 안에 등록된 controller를 불러오는 역할
  /// static => heap메모리에 올려놓음, 전역으로 참조 가능
  /// MyController: 리턴 타입.
  /// get: 불러온다는 키워드
  /// to: 변수명
  static MyController get to => Get.find<MyController>();
}