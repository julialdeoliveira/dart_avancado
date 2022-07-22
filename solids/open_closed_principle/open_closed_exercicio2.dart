void main(){
PessoaSaudavel p1 = PessoaSaudavel();
PessoaDoente p2 = PessoaDoente();

EstadoSaude estadoSaude = EstadoSaude();

estadoSaude.comoEsta(p1);
estadoSaude.comoEsta(p2);
}

abstract class Pessoa{
  void saude();
}
class PessoaSaudavel implements Pessoa{
  @override
  void saude() => print('Sou saudavel');
}
class PessoaDoente implements Pessoa{
  @override
  void saude() => print('Não estou saudável');
}

class EstadoSaude{
  
   void comoEsta(Pessoa estado){
   return estado.saude();
   }
}