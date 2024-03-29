void main() {
 Computer computer = Computer(age: 20, brand: 'Apple');
  
  //Toda lista tem generics, pois o Dart não sabe qual o tipo que vamos definir para a mesma
  List<int> nomes = [10, 3, 1];
  print(computer.primeiroValor(nomes));
  
  //Quando passamos um tipo para um dado genérico, o Dart tipa automaticamente esse objeto durante toda a execução.
  }


//Uma forma de criar uma classe genérica (Aí podemos tipa-la quando formos usar)
class Computer<T> {
  String brand;
  int age;

  Computer({
    required this.brand,
    required this.age,
  });

  void openProgram<T>(T program) {
    //program vai ser do tipo generic, generics indentifica o tipo que recebe e seta para todos os outros que serãoo recebidos
    print(program.toString());
  }

 //Nesse caso não sabemos qual será o retorno, não sabemos qual o tipo da lista, então usamos generics.
 //E depois do nome do método nós usamos generics para falar que esse método terá generics. 
T primeiroValor<T>(List<T> lista){
  return lista[0];
}

}

