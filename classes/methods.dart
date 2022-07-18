void main() {
  Computer.metodoEstatico();
  Computer.calcular(1, 2);
  Computer computer = Computer('Positivo');
  computer.setBrand = 'Apple';
  computer.metodoMaisComplexo(['Júlia']);
  computer.multiplicar(5,5);
  computer.metodoComArgumentosNomeados('Método com argumentos nomeados', name: 'Júlia');

  print(computer.getBrand);
} //Metódo comum

class Computer {
  String _brand;

  //Os três principais métodos especiais

  //Método Construtor
  Computer(this._brand);

  //Método getter
  String get getBrand {
    return _brand;
  } // Método getter

  //Método setter
  set setBrand(String value) {
    _brand = value;
  }

  //Métodos Normais
  //Método com retorno diferente e pedindo parametros
  List<Map<String, dynamic>> metodoMaisComplexo(List<String> names) {
    //Tipagem do método, que por não ser void precisa retornar algo
    List<Map<String, dynamic>> myList = [
      //Tipagem da lista do método
      {
        'name': 'Ailton',
        'age': 20,
      },
      {
        'name': 'Júlia',
        'age': 17,
      },
    ];

    return myList;
  }

  //Método estático
  static void metodoEstatico() {
    print('É chamado sem instanciar a classe');
  }

  static calcular(int a, int b) {
    return print(a + b);
  }

multiplicar(int a, int b){
 return print(a * b);
}

//Método com argumentos personalizados
void metodoComArgumentosNomeados(String value, {String? name}){
  name != null
  ? print('O seu nome é $name') : print('nome não existe');
}

}
