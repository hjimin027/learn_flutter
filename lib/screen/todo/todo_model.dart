class TodoModel {
  String name;
  bool checked;

  TodoModel(this.name, this.checked); // 우클릭 > Generate > Constructor

  @override
  String toString(){
    return 'TodoModel{name: $name, checked: $checked}';
  }
}