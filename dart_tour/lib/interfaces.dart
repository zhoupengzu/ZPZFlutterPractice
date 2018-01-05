//接口
//Dart中的接口是隐式的,可以实现多个接口
class Person {
  var _name;  //私有的
  Person(this._name);
  greet(who) => 'Hello,$who,I am $_name';
  useAsInterface() {
    print('Use as Interface');
  }
}
//一旦把某个类当作接口，则需要实现和那个类中的所有，即使是没用的也要写出来
class Student implements Person {
  var _name;
  greet(who) => 'Hello,$who,I am $_name';
  useAsInterface() {

  }
}

class Teacher extends Person {
  Teacher():super('haha');
//  @override  //可以写也可以不写
  useAsInterface() {
    super.useAsInterface();
  }
}

useSubClassOverRide() {
  Teacher techer = new Teacher();
  techer.useAsInterface();
}