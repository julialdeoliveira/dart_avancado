void main(){
// Animal animal = Animal(age: 5, name: 'Mel'); // Comentado pois a classe é abstrata
Cat cat = Cat(name: 'mr peoples', age:  3);
Dog dog = Dog(name: 'mel', age:  15);

cat.feed();
dog.feed();
}

abstract class Animal { //A classe abstrata faz com que essa classe não possa ser instanciada, apenas extendida e implementada
  String name;
  int age;

  Animal({
    required this.name,
    required this.age,
  });

  void feed(){
    print('Animal $name está se alimentando');
  }
}

class Dog extends Animal{
  Dog({required super.name, required super.age}); //super serve para acessar um atributo da classe pai

  void run(){
    print('Cachorro correndo');
  }

}
class Cat extends Animal{
  Cat({required super.name, required super.age});

  void run(){
    print('Gato correndo');
  }

}
