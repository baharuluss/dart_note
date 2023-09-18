void main(List<String> args) {
  final user = _User('veli', age: null);
 
  // müşterinin yaşı 18 den küçük kontrolü yapar mısın.

  //if ((user.age?? 0) <18) {}

  if (user.age is! int) { //is bu mu - is not ise bu değil mi şeklinde kullanılır
    if (user.age! <18) {
      print("evet küçük"); //-> is kullanımı
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(15);
    }
  }

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";

  print(_newType + 'A');

  int money1 = 50;
  int money2 = 50;
  
  if (money1 == money2) {
    print('okeyy');
  }

  final moneyBank1 = Bank(40, "12");
  final moneyBank2 = Bank(30, "12");

  print(moneyBank1 == moneyBank2);
  final newResult = "a" +"a";

  //müşteri banka sınıfından ik kişinin parasını toplayıp sonucu söyler misin
  
  // benim bankama gelen müşterilerin idsi aynı olanalar aynı müşteri olmalıdır

  print(moneyBank1 == moneyBank2);


//kullanıcıların parası var ama paranın tipi değişken olabilir.
//parası olan adamın o parametresi bir isimde olabilir veya değer olabilir
// tr yazacak ya da orada 15 yazabilir 


//Diğer bankadan modül aldık bunu ekleyip müşterinin parasını sorgular mısın

//müşteri adamın parasına 10 tl ekle ekrana döndür, adamın id sini 1 artır, ismini veli yap
//cascade notation

moneyBank1.money += 10;
print(moneyBank1.money);

moneyBank1
  ..money +=10
  ..updateName("veli");

print(moneyBank1);

}

class _User{
  final String name; // para sonradan eklenecekse late kullanıyorduk unutma
  int? age; // bilinmiyorsa null

  dynamic moneyType = "TR";

  _User(this.name, {this.age});

  void updateMoneyWithString(String data){
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);  

  operator +(Bank newBank) {
    return money + newBank.money; //34. SATIR
  }

  void updateName(String name){

  }
  
  
  @override
  String toString() {
    return super.toString() +'veli';
  }

  @override
  bool operator == (Object other) {
    if (identical(this, other)) return true;

    return other is Bank &&
      other.money == money && 
      other.id ==id;
  }
  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}
//46.satır
//diğer bankanın construcktırı yoksa methodu yapıp geri döndürüyorsa mixin kullanabilirim. işlemi class seviyesinden kurtamış oluruz. Constructorsız classlar olarak düşünebiliriz.

mixin BankMixin {
  late final String date ;
  void sayBankHello();

  void calculateMoney(int money) { // bank a bu özelliği kazandırmak için yaptığın işlem 65. satır with
    print('money');
  }

}

//aynı anda hem string hem de money almış oluyor ve bunu dynamic ile sağlamış oluyor.
// ilk olarak hangi verilerse diğeri patllar bellekte tutulma olayı var çünkü
// kodun başkası tarafından okunulabilir olması için dynamic pek kullanmamak gerekir.
// Referans ve değer tutma olaylarına dikkat et.
// Referans tipleri bellekte bir yer tuttarlar Value karşılaştırması önce referanslar aynımı kıyasının yapılması önemli
// Custom Operator örneği de var
//extend türettirmekken with dahil etmektir birlikte kullanmak.