//内置类型
//共内置了下面的类型
//numbers:(两个子类：int和double)
//strings
//booleans
//lists (也被称之为 arrays)
//maps
//runes (用于在字符串中表示 Unicode 字符)
//symbols

//所有的调用对象都要保证首先不能为null，否则会出异常

//numbers
//1、整数能转为double，但是double不能转为整数
//2、只能将字符串转为number
//3、字符串中只能全都是数字，而且最多只能有一个小数点，这样的字符串才能被转为number
//4、符合条件的字符串只能转为相应的类型int或者为double
//5、和其他语言不同，整数相除得到的不再是整数，而是准确的数值，要想获取整数部分只能采用方法floor()或者使用符号~/

//strings
//1、采用utf16编码

useNumber() {
  useNumbersForInt();
  useNumbersForDouble();
  convertToInt();
  convertToDouble();
  useForOthers();
  useString();
  useBooleans();
  useLists();
  useMaps();
}

useNumbersForInt() {
  var x = 1;
  var hexVar = 0x1010;  //16进制
//  int eVar = 2e5;  //该类型的只能为double类型
}

useNumbersForDouble() {
  var d = 1.0;
  var eVar = 1.5e4;
  print('幂指数：$eVar');
  double dou = 20.0;
//  double dou = 20;  //这样会出错
}

convertToInt() {
  String str1 = '20';
  int one = int.parse(str1);
  print('str $str1 to int:$one');
  //下面的类型转换是不可以的，会出异常
//  String str2 = '20.3';
//  int two = int.parse(str2);
//  print('str $str2 to int:$two');
  //double也不能转为int，下面是有问题的
//  double d1 = 20.4;
//  int int_d1 = int.parse(d1);
}
//external static double parse(String source, [double onError(String source)]);
//只能接受的参数类型为字符串
convertToDouble() {
  String str1 = '20.3';
  var one = double.parse(str1);
  print('str1 $str1 to double is:$one');

  String str2 = '20';
  var two = double.parse(str2);
  print('str1 $str2 to double is:$two');
  //只有全是数字，且最多只有一个小数点的字符串才能转换
//  String str3 = '20.5.4';
//  var three = double.parse(str3);

}

useForOthers() {
  const i1 = 20;
  const i2 = 30;
  var i3 = i1 + i2;
  print('$i1 + $i2 = $i3');
  const i4 = 40.5;
  var i5 = (i1 + i4);
  print('$i1 + $i4 = $i5');
  var i6 = (i2 / i1); //.floor();
  print('$i2 / $i1 = $i6'); //30 / 20 = 1.5
  var i7 = (i2 / i1).floor();
  print('整数:$i2 / $i1 = $i7');
  print("整除:${(30 ~/ 20)}");
}

useString() {
  String str1 = 'zhoupengzu';
  var len1 = str1.length;  //获取字符串长度
  for(var i = 0;i < len1; i++) {
    var char = str1[i];
    var code = str1.codeUnitAt(i);
    print('字符串$str1的第$i个字符为:$char,code为:$code');
  }
  String str2 = 'ZHOUPENGZU';
  //比较是否相等
  if(str1 == str2) {
    print('相等');
  } else {
    print('不相等');
  }
  //判断是否以某个特定的字符开头或者结束
  if(str1.startsWith("z")) {
    print('startsWith');
  }
  if(str1.endsWith('u')){
    print('endsWith');
  }
  //字符串拼接
  var newStr = str1 + str2;
  print('The new Str is $newStr');
  //字符串查找,能查到，返回下标，否则返回-1,newStr.lastIndexOf(pattern)也是查找，只不过该方法为从后开始查找
  var indexFind = newStr.indexOf('zhou');
  var indexNotFind = newStr.indexOf('Zhou');
  print('indexFind:$indexFind,indexNotFind:$indexNotFind');
  //判断字符串是否为空:isEmpty
  if(str2.isEmpty) {
    print('str2 is empty');
  }
  //不能为null
//  String str3;
//  if(str3.isEmpty) { }
  // 字符串截取
  var subStr1 = newStr.substring(1);
  var subStr2 = newStr.substring(0, 3);
//  var subStr3 = newStr.substring(-3);  //不能为负值
  print('subStr1:$subStr1,subStr2:$subStr2');
  //重复n次
  var newStr2 = str1*3;
  print('newStr2:$newStr2');
  //补全
  var newStr3 = str1.padLeft(str1.length + 5);
  print('padLeft:$newStr3');
  var newStr4 = str1.padRight(str1.length + 5);
  print('padRight:$newStr4');
  //把不够的地方用*号补齐
  var newStr5 = str1.padRight(str1.length + 5, '*');
  print('padRight:$newStr5');
  //按照一定的规则分割
  var splitStr = 'z h o u p e n g z u';
  var splt = splitStr.split(' ');
  print('split:$splt');
//  var splitMap = splitStr.splitMapJoin(' ');
//  print('split map:$splitMap');
  var upperStr = str1.toUpperCase();
  print('upper:$upperStr');
}

//Booleans
useBooleans() {
  //只能是true和false
  bool b1 = true;  //这里如果不赋值是有问题的
  if(b1) {
    print('true');
  } else {
    print('false');
  }
}

//Lists
useLists() {
//  List
  var list1 = new List(5);
  print('new list1:$list1'); //[null, null, null, null, null]
  var list2 = [1,23,'haha'];
  print('new list2:$list2');
  //创建一个list，所有的元素为h
  var list3 = new List.filled(5, 'h');
  print('new list3:$list3');
  //添加内容,如果数组的长度是被指定的，则不能做增加和删除操作
  list2.add('h');
  print('after add:$list2');
  //访问每一个
  var len1 = list2.length;
  for(var i = 0; i < len1; i++){
    print('list2中的第$i个元素为：${list2[i]}');
  }
  //修改
  list1[2] = 'change';
  print('afterChange:$list1');
  //修改长度
  list2.length = 10;
  print(list2);
  //判断是否相等:判断指向的地址是否相等
  var list4 = new List.from(list2);
  if(list2 == list4) {
    print('equal');
    list2[0] = 'list2';
    print(list4);
  } else {
    print('not equal');
  }
  list4.clear();
  print(list4);
  list4.isEmpty;
}

//Maps
useMaps() {
  Map map1 = {};
  map1['name'] = 'zhoupengzu';
  map1['age'] = '20';
  print('originMaps1:$map1');
  Map map2 = {'name':'zhoupengzu','age':'20'};
  print('orignMap2:$map2');
  print('allKeys:${map1.keys}');
  print('allValues:${map1.values}');
  map1.isEmpty;
  map1.forEach((key,value){
    print('$key=$value');
  });
}