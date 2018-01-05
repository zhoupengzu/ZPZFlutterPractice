printHelloWorld() {
  print('Hello,World!');
}

useVariables() {
  //定义一个变量
  var name = 'zhoupengzu';
  //打印和使用变量
  print(name);
  print("My name is $name");
//  print($name);  //这样是不行的
  var defaultVar;  //如果不赋值，默认值为null
  print("default variable:$defaultVar");
  String str = "该类型是直接指明的";
  print(str);
}