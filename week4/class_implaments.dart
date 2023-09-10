void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final String age;
  
  void saySomething() {
    print(age);
  }

  IStudent(this.name, this.age);
} 

class Student implements IStudent {
  final String name;
  final String age;


  Student(this.name, this.age);

  @override
  void saySomething() {
    // TODO: implement saySomething
  }
}

class Student2 implements IStudent {
  final String name;
  final String age;

  Student2(this.name, this.age);
  
  @override
  void saySomething() {
    // TODO: implement saySomething
  }
}

// implaments de superle yollamaya gerek kalmıyor
// ilk implaments verdiğimde class kızıyor. 2 override vermem lazım 
// extends edersen abstrack classtan farklı bir classtan bankuser farklı özelliklere sahip olur
// ama mesela studentı implements edersem özellikler aynı oluyor birebir kopyaları