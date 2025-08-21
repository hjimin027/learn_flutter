class Conditional {
  void simpleIf(){
    int age = 30;
    bool check = false;
    if (age < 20) {
      print('Conditional.simpleIf 미성년자');
    } else {
      print('Conditional.simpleIf 성인');
    }
  }

  void simpleSwitch(){
    int age = 30;
    switch(age) {
      case 10:
        print('10');
        break;
      case 20:
        print('20');
        break;
      case 30:
        print('30');
        break;
      case 40:
        print('40');
        break;
      default:
        print('default');
        break;
    }
  }

  void practiceIf(int n) {
    String score;
    if (n>=90){ score = 'A';}
    else if (n>=80) {score = 'B';}
    else if (n>=70) {score = 'C';}
    else if (n>=60) {score = 'D';}
    else {score = 'F';}
    print('score: $score');
  }

  void practiceSwitch(int n) {
    String score;
    switch(n){
      case >=90:
        score = 'A'; break;
      case >=80:
        score = 'B'; break;
      case >=70:
        score = 'C'; break;
      case >=60:
        score = 'D'; break;
      default:
        score = 'F'; break;
    }
    print('score: $score');
  }

  void practiceSwitch_2(int n) {
    int value = n ~/ 10;  // ~/: 나누기의 몫
    String score;
    switch(value){
      case 9:
        score = 'A'; break;
      case 8:
        score = 'B'; break;
      case 7:
        score = 'C'; break;
      case 6:
        score = 'D'; break;
      default:
        score = 'F'; break;
    }
    print('score: $score');
  }

  // String practiceSwitch(int score) {
  // 바로 return 하는 경우 break;를 안 써도 됨. 대신 widget_test.dart에 print문 필요
  //   int value = score ~/ 10;
  //   switch (value) {
  //     case 9:
  //       return "A";
  //     case 8:
  //       return "B";
  //     case 7:
  //       return "C";
  //     case 6:
  //       return "D";
  //   }
  //   return "F";
  // }
}