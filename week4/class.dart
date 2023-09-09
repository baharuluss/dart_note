import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main() {
  //müşterinin adı var, parası var, yaşı var vesaire

  final int customerMoney = 50;
  final String customerName = "veli";
  final int customerAge = 13;
  final String customerCity = "Ardahan";

  //bu müşterinin yaşı 10'dan büyükse bir işlem yapalım

  controlCustomerAge(customerMoney);

  //yeni müşteri geliyor yine aynı alanlar

  final int customerMoney2 = 50;
  final String customerName2 = "ali";
  final int customerAge2 = 13;
  final String CustomerCity2 = "sadasd";

  controlCustomerAge(customerMoney2);

  int? newMoney; // string int gibi referans değer atamadığım için null verecek default value sunu atamazsan.
  // print(newMoney! + 10); // crash yerim çünkü yukarıda defaultdı, ben bir int değer atamaya çalışıyorum ! kullanımı da burada crash e sebeb oluyor 
  // dartta soru işareti null değer döndürmekte kullanılır.
  // kodun doğrusunu aşağıya yazıyorum.
  if (newMoney != null) {
    print(newMoney + 10); 
  } else {
    print(10 + 10);
  }
  //print(newMoney + 10);
  //müşteri diyorki ya bak bizim bir servisimiz var paraları veren eğer bir cevap gelmezse sen ana değer olarak 10 ata

  // yukarıdaki kodun geliştirilebilir bir yanı yok.
  // Ben bu mğşterileri gruplasam, yani bunları kümelesem aynı özellikleri aynı şekilde bana gösterebilse
  // Bu gruplamayı class ile yapabiliyoruz ve yazılım çok aha iyi hale geliyor.

  // bankaya 3 tane müşteri gelir birinin 100 tlsi var diğerinin hesabı hiç yok diğerinin ise 0 tlsi var.
  // hesabı olmayana yeni hesap açalım, 0 tlsi olanı kov, 100tlsi olana müşterim hoşgeldin.

  // yeni bir method olsun bu methodda hesabı olamayanları ve parası olamayanları yok sayalım.
  
  List<int?> customerMoneys = [100, null, 0]; // soru işaretini eklemediğim vakit null referansı kızarıyor.

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print("beyefendi");
      } else {
        print("byy");
      }
      
    } else {
      print("hadi hesap açalım");
    }

    //--------
    // para verdiklerimi ekranda true yazalım
    bool result = ControlMoney(item) == null ? false : true ;
    print(result);
  }

  print('**' * 10); //92.satır
  //sınıf örneği
  int customer = 15;
  User user1 = User("vb", 15, age: 21, city:"city", id:"123");
  //User user2 = User("vb2", 15, null, null); //null yollamaya gerek kalmıyor

  final user3 = User("aa", 159, age:13, id:"123");; //yan value bu şekilde veriliyor.
  //süslü parantez içerisine aldıktan sonra null kullanımı gereksiz hale geldi

  print(user1.name);

  
  //Müşteri on gelen kişinin citysine göre kampanya yapacak eğer İstanbul ise
  //nullable ve class kullanımına örnek
  if (user3.city == null) {
    print("müşteri şehir bilgisini vermemiş");
  } else {
    if (user3.city!.isEmpty) {
      print("zaten bu if içeisine girdiyse nullable değer yok demektir.");
    }
    if (user3.city == "istanbul") {
      print("tebrikler kazandınız");
    }
  }

  //müşteri idsi 12 olana indirim yap (modele bunun için fonksiyon yazıyoruz) 

  if (user3.isSpecialUser("12")) {
    user3.money += 5; 
    print("5 tl eklendi");
  }
  //

  User2 newUser2 = User2("vb", 15);
  newUser2.toString();


}


// Dart da null default olarak döner.

int? ControlMoney(int? money){
  if (money != null && money > 0){
    return money;
  } else{
    return null; //else olarak bunu vermesemde olur.

  }
}

void controlCustomerAge(int value) {
  if (value > 10) {
    print("alışveriş yapabilirsiniz");
  } else {
    print("alışveriş yapamayız");
  }
  
}
