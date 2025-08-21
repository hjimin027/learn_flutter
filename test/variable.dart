class Variable {

  Variable() {
    String name = "황지민";
    int age = 25;
    bool check = true;
    // 변수 명이 회색: 아직 사용 안 됐다는 의미
    double weight = 60;
    //위는 재할당 가능


    // var, dynamic
    var animal = 'dog';
    animal = 'cat';
    // var: 타입을 추론해줌. 변경 가능
    // animal = 4;  문자열로 추론했으므로 다른 타입을 넣으면 오류 발생

    dynamic home = false;
    home = true;
    home = 'my sweet home'; // dynamic은 다른 타입 넣어도 오류 발생 X
    // dynamic은 최대한 안 쓰는 것이 좋음. 네트워크 통신 등 뭐가 들어올지 모를 때만

    // ?: nullable. 모든 타입에서 사용 가능
    String? smwu = 'yes';
    smwu = null;

    // final, const: 변수 재할당 불가능
    // final, const의 차이는 컴파일 시점
    // 컴파일: 사람이 작성한 코드를 컴퓨터가 인식할 수 있게 변환하는 작업
    // const: 컴파일 시점에 값이 정해짐. final: 설치(runtime) 시점에 값이 정해짐(메모리에 올라옴)
    final String name2 = 'Jimin';
    // name2 = 'Jimin2'; 오류 발생
    const String address = 'aaa';
    // address = 'bbb';  오류 발생
  }

}