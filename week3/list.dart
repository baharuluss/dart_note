void main() {
  //Bir bankaya 10 tane müşteri gelir bun alrın 100 tlsi 110 tlsi 50 tlsi vardır

  final int money1= 100;
  final int money2= 110;
  
  // 100 'den büyük olanlara hoşgeldiniz beyefendi

  if(money1 > 100) {
    print("Hoşgeldiniz beyefendi");
  }

  if(money2 > 110) {
    print("Hoşgeldiniz beyefendi");
  }

  String name = "";

  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300]; //

  print("müşteri 1'in parası: ${moneys[0]}");
  
  //paraları parası büyük olana göre
  
  moneys.sort();
  moneys.add(5);
  moneys.insert(2, 100);
  //moneys.reversed.toList().add(25); veli hoca bundan bahsedecek
  moneys.insert(0,5);
  print(moneys);

  // newMoneys = []; // atama yapamıyotum bu değişkeni değiştiremiyotum final
  newMoneys.add(5); // listeler referens type olduğu için liste nesnesi final olduğundan değiştirilemez, ama liste içerisindeki nesneler değiştirilebilir
  newMoneys.clear();

  print(newMoneys);
  //newMoneys.reversed.toList();  ters çeviriyor ama to list den dolayı yeni liste oluşturuyor.

  // 100 tane müşteri yap bunların hepsine sıra ile numarasına göre 5 tl ekle

  List<double> customerMoney = List.generate(100, (index) { // bu static kullanımıdır.
    return index + 5;
  });
  print(customerMoney);
  
  //customers 100 30 40 60
  //35 tl den büyük olanlara burada kredi verebiliriz yaz
  // kucuk olanlar bye

  List<int> moneyCustomerNews = [100, 30, 40, 60, -5]; // listeler üzerinde gezinme (for loop)
  moneyCustomerNews.sort();
  for (int i = 0; i < moneyCustomerNews.length; i++) {
    print("müşteri parası: ${moneyCustomerNews[i]}");
    if (moneyCustomerNews[i] > 350) {
      print("kredi hazır"); 
    }else if(moneyCustomerNews[i] > 0){
      print("kredi veremeyiz ama bir bakalım");
    }else {
      print("by");
    }
  }

  print("--------------------");

  for (int i =moneyCustomerNews.length -1; i >= 0 ; i--) {
    print("müşteri parası: ${moneyCustomerNews[i]}");
    if (moneyCustomerNews[i] > 350) {
      print("kredi hazır"); 
    }else if(moneyCustomerNews[i] > 0){
      print("kredi veremeyiz ama bir bakalım");
    }else {
      print("by");
    }
  }
  print('aaa');
  List<dynamic> user = [1,'a',true]; // bu kulanımı önermiyor veli hoca

  for (var item in user){ // liste içerisindeki itemlerı dolaşıyor
    print(item);
  }
  // yukarıdaki kullanım gereksiz onun yerine aşağıdaki  

  List<String> userNames = ["ali", "mehmet", "ayşe"];
  userNames.contains("veli");

  /*
  yukarıdaki contains kullanılmasaydı aşağıdaki gibi uzatacaktın performans ve kontol için contains daha iyi.
  for (var item in userNames) {
    if (item == "veli") {
      print("var");
    }
  } 
  */


} 
