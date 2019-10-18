void main() {
  //fun1('Hallo Dart');
  //fun1('Hallo Dart2','Hallo Flutter1');
  

  //fun2(param2:'Ini Parameter ke 2');
  //fun2(param3: 'Ini hanya parameter 3');
  print(test());
  print(test2());
}

void fun1(String param1, [String param2, String param3]) {
  print('fun1 param1: $param1');
  print('fun1 param2: $param2');
  print('fun1 param3: $param3');
}

void fun2({String param1, String param2, String param3}) {
  print('fun2 param1: $param1');
  print('fun2 param2: $param2');
  print('fun1 param3: $param3');
}

String test() {
  return 'Eudeka.id';
}

String test2() => 'Eudeka.id';
