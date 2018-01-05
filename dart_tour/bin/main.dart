import 'package:dart_tour/variables.dart' as variables;
import 'package:dart_tour/final_const.dart';
import 'package:dart_tour/built_in_types.dart' as built_in_types;
import 'package:dart_tour/functions.dart' as functions;
import 'package:dart_tour/type_operators.dart' as type_operators;
import 'package:dart_tour/switch_case.dart' as switch_case;
import 'package:dart_tour/exceptions.dart' as exceptions;
import 'package:dart_tour/class01.dart' as class01;
import 'package:dart_tour/operator_override.dart' as operator_override;
import 'package:dart_tour/interfaces.dart' as interfaces;

//调用方法的时候，默认会先在自己的文件中查找，如果查找了，就优先选择自己的方法运行，如果自己没有，才会调用引入的文件中的
//上面的variables是命名空间，就是为了解决冲突而引入的
main(List<String> arguments) {
  variables.useVariables();
  built_in_types.useNumber();
  functions.useFunction();
  type_operators.useTypeOperators();
  switch_case.useSwitchAndCase();
  exceptions.useException();
  class01.useClass();
  operator_override.useOperator();
  interfaces.useSubClassOverRide();
}
//命名空间的使用
useNameSpace() {
  printHelloWorld();
  variables.printHelloWorld();
}

printHelloWorld() {
  print('Hello,World!I am in main file');
}
