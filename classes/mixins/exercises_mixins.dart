void main(){
Aluno aluno = Aluno();
aluno.login();
aluno.senha();

Diretora diretora = Diretora();
diretora.login();
diretora.senha();
diretora.logarComoServidor();
}

class User{
  String? name;
  String? password;

  void login()=> print('Digitando Login');
  void senha()=> print('Digitando senha');
}

class Aluno extends User{}
class Diretora extends User with ServidorPublico{}
class Professor extends User with ServidorPublico{}

mixin ServidorPublico{
  void logarComoServidor()=> print('Logando como servidor');
}
