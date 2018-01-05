//重写操作符
class OperatorRW{
   operator *(OperatorRW o1) {
    return 20;
  }
}

useOperator() {
  OperatorRW oper1 = new OperatorRW();
  OperatorRW oper2 = new OperatorRW();
  print(oper1 * oper2);
}