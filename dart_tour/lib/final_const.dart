//如果不打算修改一个变量，可以使用final或者const修饰；
//实例变量只能为final，不能为const
//可以不用再指定类型
//都只能做一次赋值
//final在定义的时候可以不赋初值，但是const不行，因为const变量是编译时常量;如下面的noValue的定义
useFinal() {
  final name = "zhoupengzu";
//  final noValue;
}

useConst() {
  const name = "zhoupengzu";
//  const noValue;  //不允许这样
}