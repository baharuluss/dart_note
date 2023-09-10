void main() {
  final userNormal = User("vb", 15);
  final usersBank = BankUser('name', 155, 123);
  final usrSpecial = SpecialUser('asdda', 1231, 12354, 30);

  print(usrSpecial.calculateMoney);
  print(usrSpecial.money);
}



//paralarını görebilmelerini istiyorum benim banka ismimle birlikte

abstract class IUser{
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
    print('Ahmet - $money paranız vardır');
  }
}

class User extends IUser {
  final String name;
  final int money;

  User(this.name, this.money) :super(name,money); // super ile extends sağlandı
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super (name, money);

  void bankSpecialLogic() {
    print(money);
  }
}

class SpecialUser extends IUser{
  final String name;
  final int money;
  final int bankingCode;
  late final int _discount;
  
  SpecialUser(this.name, this.money, this.bankingCode, int discount) : super(name, money) {
    _discount = discount;
}
  //indirimli fiyatın ne kadar
  int get calculateMoney => money - (money ~/ _discount);
}


// Hepsinde olması gereken bir durum varsa abstract class kavramını kullanıcağız. performans açısındanda önemli
// soyut sınıf oluşturma mesela User -> IUser
// benim bütün metodlarım bunları yapacak olayını kodlamak için önemli
// Implements