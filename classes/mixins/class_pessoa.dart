
void main() {
  Ailton ailton = Ailton();
  ailton.programar();
  ailton.naoDormir();
  ailton.comer();
}

class ClassPessoa {
  String? nome;
  String? cpf;

  void comer() => print('Comendo');

  void dancar() => print('Dançando');

  void beber() => print('Bebendo ');

  void dormir() => print('Dormindo');
}

class Pedrinho extends ClassPessoa {}

class Maria extends ClassPessoa {}

class Ailton extends ClassPessoa with Codar, NaoDormir {} //Com a palavra with eu uso os Mixins

class Carlos extends ClassPessoa {}

class Julia extends ClassPessoa with Codar, NaoDormir {}

//Para criar um Mixin eu usarei a palavra chave Mixin  e em seguida escrevo o nome seguindo
//os mesmos padr]pes de nomeclatura de uma classe
mixin Codar {
  void programar() => print('Programando...');
}

mixin NaoDormir {
  //Aqui escrevo o método que será injetado em outra classe
  void naoDormir() => print('Sempre Acordado');
}
