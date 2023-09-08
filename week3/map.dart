import 'dart:collection';

void main() {
  //müşteri geldi adı ahmet parası 20

  Map<String, int> users = {'ahmet':20, 'mehmet':25}; //map'in 2 parametresi vardır. 1 parametre key 2. parametre value
  //müşteri ahmetin ne kadar parası var.
  print("ahmetin parası ${users ['ahmet']}"); //bana 20 yi döndürür. map içerisindeki her şey key olarak tutulur ve çağırılır.
  //müşterilerin kim ?
  for (var item in users.keys) {
    print('${item} - ${users[item]}'); //${users[values]}
  }

  for(var i =0; i < users.length; i++){
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}'); // 
  }

  //ben bankayım. müşterilerimin birden fazla hesabı olabilir
  //ahmet beyin 3 hesabı var sırasıyla 100, 300, 200
  //mehmet beyin 2 hesabı var 30, 50
  //veli beyin 1 hesabı var 30

  //müşterilerin hesaplarını kontrol et herhangi bir hesapta 150tl den fazla olan varsa krediniz hazır de
  // key ve value var hemen map yapmalıyım
  // birden fazla eleman olduğu için liste yapıyoruz.

  final Map<String,List<int>> vbBank = {
    'ahmet': [100, 300, 200],
  };
  vbBank['mehmet'] = [30,50]; // birden fazla olması için array olarak yazabiliriz
  vbBank['veli'] = [30];

  for (var item in vbBank.keys) {
    //Bankanın tüm elemanlarını gezer

    for (var money in vbBank[item]!) {
      // userin hesaplarını dolaşıyorum

      if (money >150) {
        print("kredin hazır");
        //return; // return ile formu sonlandırıyoruz bir tane koşula bakıyor eğer return olmasa 2 kere kredin hazır diyecekti.
        break;
      } 
    }
    
  }
  
  
  // bankada müşterilerin hesaplarının toplam meblasını merak ediyorum

  for (var name in vbBank.keys) { //map in en çok kullanıldığı senaryo
    //vbBank[item]! -> müşterinin hesapları demek

    int result=0;
    for (var money in vbBank[name]!) {
      result = result + money;
    }

    print('$name senin toplam paran -> $result');
  }

}