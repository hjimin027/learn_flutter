class Method {
  Method() {
    int age = add();
    print(age);

    double calcResult = calculator(4, 6);
    print(calcResult);
    
    String introduceMe = introduce(name: "황지민"); //required이 있으므로, 'name:'을 지우면 안됨
    print(introduceMe);

    String o = optional("황지민", c: "지민", b: "황지");
    print(o);
  }

  int add(){
    return 30;
  }

  double calculator(int a, int b){
    return (a + b) * 1.5;
  }

  String introduce({required String name}) {
    return "안녕하세요, ${name}입니다.";
  }

  String optional(String a, {String b = '', required String c}) {
    return "안녕하세요 ${a}님, ${c}를 잘 부탁드립니다. ${b}";
  }
}