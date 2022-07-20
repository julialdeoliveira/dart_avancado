void main() {
  var result = getRange(3, 10);
  print(result);
  var result2 = getRangeAsync(3, 10);
  print(result2);
  
}

Iterable<int> getRange(int start, int stop) sync* { //Sobre demanda, na hora que espera
  for (int index = start; index < stop; index++) {
    yield index;
  }
}
Stream<int> getRangeAsync(int start, int stop) async* {
  for (int index = start; index < stop; index++) {
    await Future.delayed(Duration(seconds: 1));
    yield index; //o yield coloca O index no stream
  }
}
