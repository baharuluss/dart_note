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

  
}
void controlUserMoney(int money, int minValue) { // parametre buraya yazılır

  if (money > minValue){ //bu methodla daha fazla insanın para durumunu kontol etmek için parametreleri kullanıyoruz.
    print("para var");
  } else {
    print("para yok");

  }
}

int convertToDolar(int userMoney){
  return userMoney ~/ 13;
}