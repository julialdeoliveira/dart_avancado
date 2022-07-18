void main(){
  // Constructors constructors = Constructors('Júlia', 17);
  //  Constructors constructors = Constructors();//Construtor nomeado com parametros opcionais
  Constructors constructors = Constructors();//Construtor Nomeado com parametrs requeridos
}

class Constructors{
  String name;
  int age;

  // Constructors(this.name, this.age); //Construtor não nomeado

  // Constructors({this.name, this.age});//Construtor nomeado com parametros opcionais

  Constructors({required this.name, required this.age});//Construtor Nomeado com Parametros requeridos
}