void main() {
  Pessoa pessoa1 = Pessoa(17, name: 'Júlia');
  Pessoa pessoa2 = Pessoa(18);
  pessoa1.correr();
  pessoa2.correr();

  Aluno aluno1 = Aluno('Janaina' ,  nota1: 10, nota2: 8);
  aluno1.media(10, 8);

  Aluno aluno2 = Aluno('Marcia' ,  nota1: 10, nota2: 8);
  aluno2.media(8, 8);
 
}

//Classes, Construtores e métodos
//Construtor Não nomeado na idade, e nomeado e opcional no name 

class Pessoa {
  String? name;
  int? idade;

  Pessoa(this.idade, {this.name});

  correr() {
    if (name != null) {
      print('$name está correndo');
    }
    else print('A pessoa não pode correr pois seu nome não existe');
  }
}
class Aluno {
  String? name;
  int? nota1;
  int? nota2;
  

  Aluno(this.name, {required this.nota1, required this.nota2}); //Construtor com parâmetros nomeados e requeridos

  media(nota1, nota2){
  
  return print('A média do aluno $name é ${(nota1 + nota2)/2}');
  }

}
