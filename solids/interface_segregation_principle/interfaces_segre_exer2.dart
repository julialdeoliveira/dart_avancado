void main(){
Julia julia = Julia();
Maria maria = Maria();

julia.getNome();
julia.codar();
maria.getNome();

}

abstract class Pessoa {
  void getNome(){}
}

abstract class PessoaProgramadora extends Pessoa{

  void codar(){}
}

class Julia implements PessoaProgramadora{

  @override
  void codar() {print('Estou fazendo programa');}

  @override
  void getNome() {print('Meu nome é julia'); }
 
}

class Maria implements Pessoa{
  @override
  void getNome() {print('Meu nome é Maria');}
}


