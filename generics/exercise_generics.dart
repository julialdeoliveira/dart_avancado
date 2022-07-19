void main() {
  Person person = Person(name: 'Júlia', age: 17);
  List<String> colors = ['blue', 'yellow', 'orange'];

  person.printColors(colors);
}

class Person<T> {
  String name;
  int age;

  Person({required this.name, required this.age});

  List<T>printColors<T>(List<T> colors) {
    print(colors);
    return colors;
  }
}
