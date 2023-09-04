void main() {
  //benim bir müşterim var parası var mı yok mu kontrol eder misin.
  //parasını dolar yapmak istiyor ve kaç dolar yaptığını merak ediyor.
  final int userMoney = 0;
  controlUserMoney(userMoney, 0); // fonksiyona parametre gönderme

  final int user2Money = 5;

  controlUserMoney(user2Money, 5);

  final newUserMoney =50;
   int result = convertToDolar(newUserMoney);
   print(result);

   //bana bir dolar hesaplama yap ben sana söylemezsem yeni bir durum var diye her zaman 13 al
   final newResult = convertToStandartDolar(100, dolarIndex: 13);
   final newResult2 = convertToStandartDolar(100); 
   final newResult3 = convertToEuro(userMoney: 500); //required 
   sayHello('aa');
   //final newResult2 = convertToStandartDolar(100) burada hata veriyor opsiyonel programlama
   // bazı parametreleri defult atayabiliyoruz 37. satır { int dolarIndex = 14 } deki gibi 
   //ama bu sever final new result (100, 4) 4 parametresini değiştirmek istediğimde kullanamıyorum onun için (100, dolarIndex: 13) olarak değiştirebiliyorum

  
}
void controlUserMoney(int money, int minValue) { // parametre buraya yazılır ve metod

  if (money > minValue){ //bu methodla daha fazla insanın para durumunu kontol etmek için parametreleri kullanıyoruz.
    print("para var");
  } else {
    print("para yok");

  }
}

int convertToDolar(int userMoney){
  return userMoney ~/ 13; //  return geriye değer döndüren metod
}

 //bana bir dolar hesaplama yap ben sana söylemezsem yeni bir durum var diye her zaman 13 al
int convertToStandartDolar(int userMoney, {int dolarIndex = 14}) {
  return userMoney ~/dolarIndex;
}
int convertToEuro({required userMoney, int dolarIndex= 14}) { // int userMoney yazdığın vakit null safety yüzünden kızarıyor. dart ben bunun değerini bilmiyorum.İlk değerler null gittiği için bu değerleri vermemiz lazım.
  return userMoney ~/ dolarIndex;
}

String sayHello(String name) {
  return 'hello $name';
}