class Collections {

  // List, Map, Set

  //생성자 X, widget_test에서 Collections() X
  void listAdd() {
    List<int> listInt = [];
    listInt.add(1); //1개 추가
    listInt.addAll([2,3,4,5]);  //여러 개 한 번에 추가

    listInt.insert(0, 50);  //특정 위치에 추가

    print(listInt);
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.add("김진한");
    nameList.add("홍길동");
    nameList.add("이순신");
    nameList.add("오바마");
    nameList.add("기린");
    nameList.add("호랑이");
    nameList.add("사자");
    
    nameList.remove("기린");
    nameList.removeLast();
    nameList.removeAt(0); //없는 인덱스면 오류 발생
    nameList.removeWhere((element) {  //조건문
      print("element: ${element}");
      return element == "호랑이";      //element이 "호랑이"와 동일하다면 그 값에 대해 remove
    });
    print(nameList);
    
    nameList.clear(); //모든 값 삭제
    print(nameList);
  }

  void listController() {
    List<int> ageList = [4, 34, 12, 65, 21, 5];
    int length = ageList.length;
    print('Collections.listController : ${length}');

    int two = ageList[2];
    print('Collections.listController two: ${two}');

    //ageList이 비어있는 경우 isEmpty = true
    bool isEmpty = ageList.isEmpty;
    bool isNotEmpty = ageList.isNotEmpty;
  }


  // Map은 {}. key, value로 이루어짐
  void mapController() {
    Map m = {
      "a": 10,
      "b": 11,
      "c": 12,
      "d": 13,
      14: 41,
      1111: 4444,
    };

    var maValue = m["a"];
    print('Collections.mapController: ${maValue}');
    m["e"] = 40;  //추가
    m.remove("c");  //키가 있으면 제거
    print('Collections.mapController m: ${m}');

    Map<String, int> typedMap = {
      "a": 10,
      "b": 20,
      "c": 30,
    };
    print('Collections.mapController typedMap: ${typedMap}');
  }


  // Set: 중복값 허용X
  void setController() {
    Set s = {'a', 'b', 'c'};
    s.add('b');
    print('Collections.setController : ${s}');
  }


  void practice() {
    List<String> a = [];
    a.addAll(['Dogs', 'Cats', 'Bird', 'Hamster', 'Sheep']); //addAll은 괄호 안에 []로 묶어야 함
    a.removeAt(1);
    print("list: $a");

    Map<String, int> b = {};
    b['a'] = 12;
    b['b'] = 22;
    b['c'] = 33;
    b.remove('b');
    print("map: $b");

    Set<String> c = {};
    c.add('Korea');
    c.add('Japan');
    c.add('China');
    c.add('Russia');
    c.add('America');
    c.remove('Korea');
    print("set: $c");
  }
}