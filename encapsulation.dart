class Person {
  String _name = ''; // Private variable

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }
}

void main() {
  var person = Person();
  person.setName('Alice');
  print(person.getName());
}