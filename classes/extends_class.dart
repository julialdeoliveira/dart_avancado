void main(){
  Client client1 = Client();
  client1.name = 'Júlia';
  client1.bankAccount = '5.000.000.000.000,00';
}

class Person{
  String? name;
  String? cpf;
  int? age;
  

}

class Client extends Person{ 
//[extends]Isso é herança (Herdar tudo o que a outra classe tem, atributos, métodos...)
String? bankAccount;

}