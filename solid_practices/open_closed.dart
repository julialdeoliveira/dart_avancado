void main(){
  ComputerApple computerApple = ComputerApple();
  ComputerPositivo computerPositivo = ComputerPositivo();
  ComputerLenovo computerLenovo = ComputerLenovo();

  UsarComputer usarComputer = UsarComputer(computerPositivo);
  usarComputer.mostrarLogoAoLigar();
}
class Computer {
  void mostrarLogoAoLigar() {}
}

class ComputerPositivo implements Computer {
  @override
  void mostrarLogoAoLigar() {
    print('Logo positivo');
  }
}

class ComputerApple implements Computer {
  @override
  void mostrarLogoAoLigar() {
    print('Logo Apple');
  }
}
class ComputerLenovo implements Computer {
  @override
  void mostrarLogoAoLigar() {
    print('Logo Lenovo');
  }
}

class UsarComputer implements Computer{
  final Computer computer;
  UsarComputer(this.computer);

  @override
  void mostrarLogoAoLigar() {
  computer.mostrarLogoAoLigar();
  }

  }


