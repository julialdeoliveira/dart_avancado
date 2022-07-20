import 'dart:isolate';

//Isolate by me

void main() async {
  print('Executing main isolate');

  final receivePort = ReceivePort();
  await Isolate.spawn(workerIsolate, receivePort.sendPort); //workerisolate é um método de execução pesada e por isso tem seu isolate

  print('Executing main isolate again');

  print(await receivePort.first);
}

void workerIsolate(SendPort sendPort) async {
  await Future.delayed(Duration(seconds: 2));
  final response = 'Executing second isolate, Processamento concluido';
  Isolate.exit(sendPort, response);
}
