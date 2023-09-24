// Single Responsibility Principle (SRP) - SOLID 
// Solid prensibinde bir class amaç dışı iş yapmamalıdır.
// yani 2 classı ortak kullanmak için yeni bir class oluşturulmalıdır

import '../week4/class_extends.dart';

void main(List<String> args) {
  IDatabase database = SQL();
  database = Mongo();
  database.write(); //LSP prensibi
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;
  
  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserName('a');
    changeLocalization();
  }

  void changeLocalization() {
    print('object');
  }
}

// Open Closed Principle (OCP)
// yani bir classın içindeki bir methodu değiştirmek yerine yeni bir class oluşturup
// onu kullanmak daha mantıklıdır.

class Product{
  final String name;
  final String money;
  
  Product(this.name, this.money);
}

class ProductCategories extends Product{
  
  ProductCategories(String name, String money) : super(name, money);
  
  final String category= ";l";
}

// Liskov Substitution Principle (LSP)
// bir classın alt classı oluşturulurken üst classın özelliklerini kullanmalıdır.

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    print('sql yazıldı');
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    print('mongo yazıldı');
  }
}
// Interface Segregation Principle (ISP)
// bir classın içindeki methodlar birbirinden bağımsız olmalıdır.

abstract class IUserOperation {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void languagae();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    print('location change');
  }
}

//Dependency Inversion Principle (DIP)
// bir classın içindeki methodlar birbirinden bağımsız olmalıdır.
// üst classa dokunmadan alt classı değiştirebilmeliyiz.

abstract class ICamereManger{
  void readQR();
}

class DeviceCamereManager extends ICamereManger{
  final IphoneCamereRead iphoneCamereRead;
  
  DeviceCamereManager(this.iphoneCamereRead);
  @override
  void readQR() {}
}

class IphoneCamereRead extends ICamereManger{
  void readQR(){
    print('qr okundu');
  }
}





