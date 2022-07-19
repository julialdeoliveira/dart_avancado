//Faça uma classe genérica, que espera um atributo genérico, peça no construtor.
//E tenha um método que imprima o valor desse atributo e retorne esse valor usando o generics.


void main(){
Computer<String> computer = Computer(program: 'Visual Studio');
computer.imprima(computer.program);
}

class Computer<T>{
  T program;

  Computer({required this.program});

  T imprima<T>( T program){
    print(program);
    return program;
  }
}