// void main(){
//   Animal? animal;
//   print(animal!.name ?? 'Desconhecido');
// }


void main(){
  // print('oi');
}

//Uma classe
class Animal {
  //atributos
  // String? name;
  // int? age;
  // double? weight;
  String name;
  int age;
  double weight;

  //Construtor mais simples (Não nomeado)
  Animal(this.name, this.age, this.weight);


  //métodos
  void run() {
    //Uma das formas de tratar os nullos
    // if (age != null && weight != null) {
    //   double result = age! * weight!;
    // }
    // String newString = name ?? 'desconhecido';
    // double result = (age ?? 1) * (weight ?? 1);
      
   

    print('Correndo...');
  }

  void scream() {
    print('Gritando');
  }
}
