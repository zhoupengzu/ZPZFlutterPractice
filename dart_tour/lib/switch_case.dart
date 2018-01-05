//1、必须有break和continue里的一个
//2、如果是continue，则后面要跟跳去的地方，切跳去的地方只能是另外的case
useSwitchAndCase() {
  String str = '2';
  switch (str){
    case '1':{
      int i = 10;
      print(i);
    }
      break;
    case '2':{
      print('2');
    }
    continue continueMark;
    case '3':{

    }
      break;
    continueMark:
    case '4':
      print('I am from continue');
      break;
    default:{
      print('default');
    }
  }
}