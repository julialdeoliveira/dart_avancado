void main() {
  Client client1 = Client();
  client1.name = 'Júlia';
  client1.bankAccount = '5.000.000.000.000,00';
  client1.birthday = 2004;
  client1.getAge();
}

abstract class Person {
  String? name;
  String? cpf;
  int? age;
  int? birthday;

  int getAge() {
    if (birthday != null) {
      return DateTime.now().year - birthday!;
    } else {
      return 0;
    }
  }

  void login();
}

//[extends]Isso é herança (Herdar tudo o que a outra classe tem, atributos, métodos...)
class Client extends Person {
  String? bankAccount;

  //herdando um método e sobreescrevendo ele
  @override
  void login() {
    print('Login como cliente');
  }

  @override
  int getAge() {
    print(super.getAge()); //Acessando um método da classe pai e reescrevendo ele apenas por reescrever, essa mudança não faz nada
    return 10;
  }
}
