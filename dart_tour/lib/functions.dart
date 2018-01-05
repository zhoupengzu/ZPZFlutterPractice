//方法
//1、返回值可以省略
//2、可选命名参数和可选位置参数不能组合使用
useFunction(){
  var isEqual = isNumbersEqual(10, 20);
  if (isEqual) {
    print('equal');
  } else {
    print('not equal');
  }
  useForOptionlParams(age: 20, name:'zhoupengzu');
//  useForOptionlParams('zhou', 20);  //不可取

  useForOptionalPositionParams('zhoupengzu', '20');
  useForOptionalPositionParams('zhoupengzu', '20', 100);

  useForDefaultValue1(name:'zhou');
  useForDefaultValue2('zhou');

  var func = useForClosure1('zhoupengzu', 20);
  print(func());
}
//省略返回值
isNumbersEqual(var a, var b){
  return a == b;
}

//可选命名参数,调用的时候必须指定参数名
useForOptionlParams({var name, var age}) {
  print('name:$name,age:$age');
}
//不能组合使用
//useForOptionlParams2({var name, var age, [var score]}) {
//  print('name:$name,age:$age');
//}

//可选位置参数,这里的score是可选的，可传也可不传
useForOptionalPositionParams(var name, var age, [var score]) {

}

//默认参数,只能在可选参数和可选位置参数两种情况下使用
useForDefaultValue1({var name, var age = 20}) {

}

useForDefaultValue2(var name, [var age = 20]) {

}
//匿名方法、lambda或者closure闭包，该怎么表示返回值呢??
Function useForClosure1(var name, var age) {
  var printInfo1 = (name,age){

  };
  var printInfo2 = (var name, var age){
    return "$name,$age";
  };
  var printInfo3 = (){
    return "$name,$age";
  };
  return printInfo3;
}
