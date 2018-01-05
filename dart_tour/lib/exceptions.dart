useException() {
  useCatchException();
}

useCatchException() {
  try {
    int i = 30 ~/ 0;
    print(i);
  } on IntegerDivisionByZeroException catch(e){
    print(e.toString());
  } catch(e){
    print('exception is:$e');
  }
  print('I am OK');
}