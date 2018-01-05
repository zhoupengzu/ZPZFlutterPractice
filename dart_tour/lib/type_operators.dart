//类型操作符
//as: 类型转换，只能用在同类型的转换，或者父类和子类直接的转换，如果转换的对象为null，则会抛出异常
//is： 对象是否为指定的类型，如果判断对象为null，则该办法失效
//is! 对象是指定的类型返回false，如果判断对象为null，则该办法失效
useTypeOperators() {
  var list = [2,3,4];
  if(list is List) {
    print('is list');
  }
  List listEmpty;  //如果这里为空，则没办法判断
  if(listEmpty is List) {
    print('is list');
  } else {
    print('is not list');
  }
  //下面的操作不可行
//  var str = '20';
//  str as int;
  listEmpty = listEmpty ?? [];
  print('如果为空则赋值，否则赋改变原职:$listEmpty');
  useConditionMemberVisit();
}

//条件成员访问:?.,和 . 类似，但是左边的操作对象不能为 null，例如 foo?.bar 如果 foo 为 null 则返回 null，否则返回 bar 成员
useConditionMemberVisit() {
  String str;
  print(str?.length); //null
//  print(str.length);  //这儿会抛出异常
}