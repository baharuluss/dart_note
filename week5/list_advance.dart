// ignore_for_file: public_member_api_docs, sort_constructors_first
  import 'dart:html';

void main(List<String> args) {
    final model = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 12356, isSecondHand: false);
  

  final carItems =[
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 12, isSecondHand: false), // bu doğru işlem değil
    CarModel(category: CarModels.toyota, name: 'toyota 2542', money: 45),
    CarModel(category: CarModels.yamaha, name: 'yamaha 3325', money: 44, isSecondHand: false),
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33),
    CarModel(category: CarModels.toyota, name: 'toyota 00', money: 43, isSecondHand: false),
  ];
  final resultCount=carItems.where((element) => element.isSecondHand==true).length;
  print(resultCount); //27.satır

  final newCar =CarModel(category: CarModels.bmw, name: 'bmw x5', money: 33);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('patron yok alalım');
  } else {
    print('elimizde yok alalım');
  }

  final resultBmwMore20 =carItems.where((element) {
    return element.category == CarModels.bmw && element.money >20;}).join();

  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  bool isHaveCarMercedes = false;
  try {
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
  } catch (e) {
    print('araba yok abi');
    isHaveCarMercedes = false; 
  } finally {
    print('abi bu işlem ağır oldu bir daha sorma $isHaveCarMercedes');
  }
    
  final index = carItems.indexOf(newCar);
  print(index);

  carItems.add(CarModel(category: CarModels.mercedes, name: 'merce', money:1515 ));
  carItems.sort();

  print(carItems);
}

  // benim bir arabalar sınıfım olacak
  // arabaların modeli, ismi, parası kesin olacak şehri olmayacak, ikinci el durumu eğer müşteri söylemezse
  // her ürün ikinci el kabul edilecek

  // benim 5 tane arabam olacak

  // benim bu arabalardan kaç tanesi ikinci el
  // yeni bir araba geldi eğer ismi aynı olan varsa bu bizde var gibi hissediyorum doğru mu?
  
  //bana bmw olan ve moneysi 20 den büyük arabalarımızın ismini söyler misin?

  // sadece isimleri yan yana gösterebilir misin 

  // benim elimde mercedes var mı?
  
  // yeni bir mercedes aldım ekler misin.

  //bana arabalarımı küçükten büyüğe doğru sıralar mısın?

class CarModel {
    final CarModels category; // final çünkü model, isim, parası değişmeyecek
    final String name;
    final double money;
    String? city; // null olabilir
    bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand= true, // bunu kullanıcıdan isteme kullanıcı belirtmiyorsa secondHand'dir. KURALDAN DOLAYI
  });

  @override //equality ekleyince çalışıyor.
  bool operator ==(covariant CarModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.category == category &&
      other.name == name &&
      other.money == money &&
      other.city == city &&
      other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
  }

  enum CarModels {bmw, yamaha, toyota, mercedes}


