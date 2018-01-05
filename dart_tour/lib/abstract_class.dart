
//抽象函数
//包含抽象函数的类必须定义为抽象类，使用abstract修饰
//如果子类继承了父类，则该抽象方法需要被实现，如果不实现，则应把子类也定义为抽象类
//抽象类不能实例化对象
abstract class Person {
  var name;
  final type = 'person';
  abstractFunc();
}

class Student extends Person{
  abstractFunc() {  //如果不实现该方法，则该类需要被定义为抽象类

  }
}

useAbstractClass() {
//  Person per = new Person(); //因为Person为抽象类，所以这里不能实例化对象
}