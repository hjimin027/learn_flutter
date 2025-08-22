// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
// import 'package:contact/main.dart';

import 'collections.dart';
import 'conditional.dart';
import 'for_loop.dart';
import 'method.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  // Method();
  //
  // Collections collection = Collections();
  // collection.listAdd();
  // collection.listRemove();
  // collection.mapController();
  // collection.setController();
  // collection.practice();
  //
  // Conditional conditional = Conditional();
  // conditional.practiceIf(95);
  // conditional.practiceSwitch(72);

  // ForLoop();


  // <person.dart>
  // Person person = Person("황지민", 25, 60);
  // print('person: $person');  //Person클래스의 인스턴스. 인스턴스=>클래스를 생성해서 메모리에 올라간 상태
  // print('person name: ${person.name}');
  // print('person age: ${person.age}');
  // print('person weight: ${person.weight}');
  // print('person nickname: ${person.nickname}');
  // person.talk();
  //
  // List<Person> personList = [];
  // personList.add(Person("황지민", 25, 60));
  // personList.add(Person("지민황", 26, 70));
  // personList.add(Person("민황지", 27, 80));
  // for (var o in personList) {
  //   print(o);}

  // <product.dart>
  List<Product> productList = [];
  productList.add(Product(name: "ABC", company: "companyA"));
  productList.add(Product(name: "BCD", company: "companyB", price: 45000));
  productList.add(Product(name: "CDE", company: "companyC", price: 62000));
  for (var o in productList) {
    print(o);
  }
  productList[2].sale();
  print('productList[2] sale 함수 사용');
  print(productList[2]);
}
