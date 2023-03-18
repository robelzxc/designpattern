void main(){
  SingletonData variableA = new SingletonData();
  SingletonData variableB = new SingletonData();
  print(variableA._test);
  variableA.setTest('Hello This is Variable Check!');
  print(variableA._test);
  print(variableB._test);
}


class SingletonData{
  SingletonData.internal();
  static final _singleton = SingletonData.internal();

  String? _test;
  String? get test=>_test;
  void setTest(var newvalue){
    _test = newvalue;
  }
  factory SingletonData(){
    return _singleton;
  }
}