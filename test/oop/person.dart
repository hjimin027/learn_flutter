// oop: 객체지향언어. 코드들의 집합체. 개념 좀 더 알아보기

// 클래스에는 함수가 들어갈 수도 있고, 변수가 들어갈 수도 있음
class Person {
  String name;
  int age;
  double weight;
  String nickname = "jimin";

  Person(this.name, this.age, this.weight); //생성자
  // this.nickname은 초기값을 설정했으므로 안 넣어도 오류가 발생하지 않음


  void talk(){
    print('$name이 대화를 신청했습니다.');
  }

  @override
  String toString() {
    return 'Person{name: $name, age: $age, weight: $weight}';
  }
  // 위를 생성하면 print('$person')의 값이 달라짐
}