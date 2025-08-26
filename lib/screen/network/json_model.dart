class Info {
  int age;
  double weight;
  String name;
  Description? description;

  Info(this.age, this.weight, this.name, this.description);

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      json['age'] ?? 0,
      json['weight'] ?? 0.0,
      json['name'] ?? '',
      Description.fromJson(json['description']),
    );
  }

  @override
  String toString() {
    return 'Info{age: $age, weight: $weight, name: $name, description: $description}';
  }
}

class Description {
  String career;
  String when;

  Description(this.career, this.when);

  // factory: named 생성자와 같음
  factory Description.fromJson(Map<String, dynamic> json) {
    return Description(
      json['career'] ?? '',
      json['when'] ?? '',
      );
  }

  @override //generate>toString
  String toString() {
    return 'Description{career: $career, when: $when}';
  }
}

class JsonModel {
  //키마다 변수 추가
  String id;
  int number;
  Info info;

  JsonModel(this.id, this.number, this.info);

  factory JsonModel.fromJson(Map<String, dynamic> json) {
    return JsonModel(
      json['id'] ?? '',
      json['number'] ?? 0,
      Info.fromJson(json['info']),
    );
  }

  @override
  String toString() {
    return 'JsonModel{id: $id, number: $number, info: $info}';
  }
}

class Framework {
  String email;
  String platform;

  Framework(this.email, this.platform);

  factory Framework.fromJson(Map<String, dynamic> json) {
    return Framework(
      json['email'] ?? '',
      json['platform'] ?? ''
    );
  }

  @override
  String toString() {
    return 'Framework{email: $email, platform: $platform}';
  }
}