void main(){
  // Constructors constructors = Constructors('Júlia', 17);
  //  Constructors constructors = Constructors();//Construtor nomeado com parametros opcionais
  // Constructors constructors = Constructors(name: 'Júlia', age: 17);//Construtor Nomeado com parametrs requeridos
  // print(constructors.name);
  Constructors constructors = Constructors.hibrido('Júlia', age: 17, hobby: 'sleeping');//Construtor hibrido  com default
  Constructors constructorRequerido = Constructors.nomeRequerido(name: 'Júlia', hobby: 'read', age: 17);// Construtor com parametros requeridos
  print('${constructors.name}, ${constructors.age}, ${constructors.hobby}' );
  print('${constructorRequerido.name}, ${constructorRequerido.age}, ${constructorRequerido.hobby}');// printando o com parametros requeridos


  People  people = People('Guilherme', 18, true); //posicional
  print('${people.name}, ${people.age}, ${people.work}'); //print do posicional
  
  
}

class Constructors{
  String? name;
  String? hobby;
  int? age;

  // Constructors(this.name, this.age); //Construtor não nomeado

  // Constructors({this.name, this.age});//Construtor nomeado com parametros opcionais, deve ter ? dps dos tipos das vars

  // Constructors({required this.name, required this.age});//Construtor Nomeado com Parametros requeridos

Constructors.nomesdoOpcionais ({
  this.name,
  this.age,
});//Nomeado com parametros nomeados e opcionais

Constructors.nomeRequerido({
  required this.name,
  required this.hobby,
  required this.age,
});// Nomeado com parametros nomeado e  requeridos, tem que ter os ? nos atributos da classe

 Constructors.hibrido(
  this.name, {
  required this.hobby,
  required this.age,
   }); //hibrido e nomeado
 
  Constructors.hibridoComDefault(
    this.name, {
    this.hobby = 'programar',
  required this.age,
  });//Construtor hibrido com valores default

 
}
 class People{
    String? name;
    int? age;
    bool? work;

    People(this.name, this.age, this.work);
  } //Exercicio posicional com parametros


