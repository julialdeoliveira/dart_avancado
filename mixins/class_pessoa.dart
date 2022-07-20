
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

class Ailton extends ClassPessoa with Codar, NaoDormir {}

class Carlos extends ClassPessoa {}

class Julia extends ClassPessoa with Codar, NaoDormir {}

mixin Codar {
  void programar() => print('Programando...');
}

mixin NaoDormir {
  void naoDormir() => print('Não dormir');
}
