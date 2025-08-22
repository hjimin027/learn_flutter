class ForLoop {
  ForLoop(){
    // normalForLoop();
    // enhancedForLoop();
    // forEachForLoop();
    practice();
  }

  void normalForLoop(){
    for (int i=0; i<5; i++){
      print("normal for index: $i");
    }
    
    List<int> ageList = [30, 23, 42, 19, 55, 32];
    
    for (int i=0; i<ageList.length; i++){
      print('ageList index: $i, value: ${ageList[i]}');
    }
  }

  void enhancedForLoop(){
    List<int> ageList = [30, 23, 42, 19, 55, 32];
    for(int value in ageList){
      print('enhancedForLoop: $value');
    }
  }

  void forEachForLoop(){
    List<int> ageList = [30, 23, 42, 19, 55, 32];
    ageList.forEach((element) {
      print('forEachForLoop: $element');
    },);
  }

  void practice(){
    List<double> p = [1.2, 3.4, 4.13, 5.3, 8.43];
    // normal for loop
    for (int i=0; i<p.length; i++){
      print('index: $i, value: ${p[i]}');
    }

    // enhanced
    for (double value in p){
      print('enhanced loop: $value');
    }

    // forEach
    p.forEach((element) {
      print('forEach: $element');
    },);
  }

  // 왜 print에 노란 경고문? 실제 제품에서는 사용되지 않으므로 제거하라
}