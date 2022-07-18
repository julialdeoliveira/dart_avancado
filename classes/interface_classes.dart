void main() {
// Animal animal = Animal(age: 5, name: 'Mel'); // Comentado pois a classe é abstrata
  Cat cat = Cat();
  Dog dog = Dog();

  cat.feed();
  dog.feed();
}

abstract class Animal {
  //A classe abstrata faz com que essa classe não possa ser instanciada, apenas extendida e implementada

  void feed();
  void run(double distance);
}

class Dog implements Animal {
  @override
  void feed() {
    print('Cachorro comendo');
  }

  @override
  void run(double distance) {
   print('Cachorro correndo');
  }
}

class Cat implements Animal {
  @override
  void feed() {
    print('Gato comendo');
  }

  @override
  void run(double distance) {
    print('Gato correndo');
  }
}
