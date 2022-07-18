// void main(){
//   Animal? animal;
//   print(animal!.name ?? 'Desconhecido');
// }
void main(){
  // print('oi');
}


class Animal {
  //atributos
  String? name;
  int? age;
  double? weight;

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
