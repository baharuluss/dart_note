// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'model/product_config_model.dart';

void main(List<String> ags) {
  final newProduct = Product.money;
  
  calculateMoney(Product.money ?? 0);

  proudctNameChange();

  calculateMoney(Product.money ?? 0);

//user classını kullanarak product yapmak istiyorum. 43.satır
  final user1 = User('veli', 'aa');

  final newProduct2 = Product(user1.product); //factory

  final newProduct3 = Product.fromUser(user1); // üstekine göre bu çok daha tatlı bir kullanım coding olarak doğru değil ama 

  proudctNameChange();
  
  //api key neydi acaba

  ProductConfig.instance.apiKey;
  //ProductConfig("asas"); bu hata veriyor artık singletondan dolayı
}
// ortak kullanılacak sınıfları her yerde kullanmak static ekliyoruz bunun için

void calculateMoney(int money) {
  if (money > 5) {
    print('5 tl daha ekledik');
    Product.incerementMoney(5);
    print(Product.money);
    
  }
}

void proudctNameChange() {
  Product.money = null;
  
}
class Product {
  static int? money = 10;
  String name;

  Product(this.name) {}

  Product.veli([this.name = 'veli']);

  factory Product.fromUser(User user) {
    return Product(user.name); // geriye değer döndüren bir const olmasını istiyorsan factory ekliyorum
  }
  //üretim tesisi gibi nereden geleceğini ne döndereceğini belirtiyoruz.
  static const companyName = "VB BANK"; // bu bir singleton'dır ama nesneyi alıyor.


  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

//bu tehlikeli bir kullanım bu değişken çok rahat manipüle edilebilir ve değişik crashler gelebilir


class User {
  final String name;
  final String product;
  
  User(this.name, this.product);
}
/*
class ProductConfig{
  static const instance = ProductConfig();

  final String Apikey = 'adsada';
}
*/
//hoca kodu product_config modeline attı
//bu classım da bir değişken yapacağım. bir apikeyim var hersein erişmesini istiyorum. Proje boyunca yalnız 1 tane
//ĞroductConfig olsun istiyorum. Bunun için singleton yapıyoruz.

