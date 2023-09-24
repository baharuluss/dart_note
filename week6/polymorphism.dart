// Çok biçimlilik
// Classlarda kullanıyoruz. ortaklaştırma işlemi yapabiliyoruz.
// ortak interfaceden yararlanıyoruz.
// farklı classlarımız var ama hepsi ortak bir interface kullanıyor.

void main(List<String> args){
  IUser user = Turk();
  user.sayName();
  user = English(); // üst classın alt classı olabilir.
  user.sayName(); 
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'Veli';

  @override
  void sayName() {
    print('benim kapıdan hoşgeldiniz $name');
    print('karnın aç mı ?');
  }
}

class English implements IUser {
  @override
  String get name => 'Adam';

  @override
  void sayName() {
    print('welcome to your home $name');
    print('let\'s meet our friends in Oxford');
  }
}