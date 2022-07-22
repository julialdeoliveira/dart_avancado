void main(){
Animal animal = Animal();
Cachorro cachorro = Cachorro();

void imprimeNome(Animal objeto){
 return objeto.getNome();
}

imprimeNome(animal);
imprimeNome(cachorro);
}

class Animal{
  void getNome(){
  print('Meu nome é animal');
}
}

class Cachorro extends Animal{
void getRaca(){
  print('Sou um pinscher');
}

void getNome(){
  print('Meu nome é auau');
}
}