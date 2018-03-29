//所有的类都继承自Object
//使用new关键字来创建一个对象
//构造函数的名字是类名ClassName或者是ClassName.identifier
//常量构造函数：创建编译时常量，使用const替代new即可

//如果你没有定义构造函数，则会有个默认构造函数。 默认构造函数没有参数，并且会调用超类的 没有参数的构造函数。
//子类不会继承超类的构造函数。 子类如果没有定义构造函数，则只有一个默认构造函数 （没有名字没有参数）
//使用命名构造函数可以为一个类实现多个构造函数， 或者使用命名构造函数来更清晰的表明你的意图

//创建一个类
//使用this代表自己
class Person {
  var name;
  int age;
  static var sum = 20;  //静态变量，可以直接通过类名访问，但是不能通过子类等调用
//  const type = 'person';  //这样不被允许
  static const type = 'person';
  final type_final = 'person';
  static final type_final2 = 'person';
//  final type_final3;  //必须被初始化
  //默认构造函数，如果没有该函数，但是定义了其他的构造函数，子类必须用super调用
//  Person() {
//    print('I am constructor!');
//  }
  //语法糖构造函数初始化
  Person.init_name(this.name);
  //命名构造函数(可选定参数)
  Person.init_name_age({this.name, this.age});
  Person.init_age(int age) {
    this.age = age;
  }
  //重定向构造函数，不能有方法体
  Person.redirect():this.init_name('');
  printInfo(){
    print('name is ${this.name},age is ${this.age}');
  }
  //类方法，只能通过该类调用,不能使用this
  static classFunc() {
//    this.name;
  }
}
//会默认调用父类的默认构造函数
class Student extends Person {
  var stuName;
  // setter和getter，要注意类型匹配
  num get myAge => 20;
  set myAge(var value) => value;
  //如果父类没有默认构造函数，则这里必须显式使用super调用父类的某个构造函数
  //如果有成员变量需要初始化，则要在调用父类之前
  Student():this.stuName='stuName',super.init_name(''){

  }
}

useClass() {
  Student stu1 = new Student();
  stu1.name;
//  stu1.myAge = '';
  print(stu1.stuName);
  Person.sum;
  var person = new Person.init_age(20);
}