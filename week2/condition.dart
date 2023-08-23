void main() {
  int money =15;
  String userName = "veli";
  //bool => 0,1
  bool CustomerRich= false;
  print('$money' + userName);

  if (money > 10) {
    print("sen zenginsin abii");
  }else{
    print("gerekirse simit yeriz");
  }
  money = money - 10;

  if (money > 10) {
    print("sen zenginsin abii");
  }else{
    print("abi burada ne işin var");
  }

  // Müşteri banakaya gelir ve 10 tlsi vardır ve sorgu yapar.
  // sorgu sonucu 20 tlsi alınır.
  // eğer kalan parası 0 dan küçükse bankadan kovulur.

  int newCustomerMoney = 10;
  const int bankingCost = 5;
  const int BankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print("Hoşgeldiniz beyefendi");
    newCustomerMoney = newCustomerMoney - BankingCostGeneral;
  }else if(newCustomerMoney >0){
    print("Beyendi lütfen sıra alınız.");
  }else{
    print("Beyendi kredinizi ödeyin");
  }
 
 // bir mağazaya isim verilecek
 // verilecek örnek isimler toplanır.
 // örnek isimler : ahmet, veli, mehmet, kx , x
 // mağaza derki ben sadece karakter uzunluğu iki ve daha altı olanları görmek isterim.
 //bu koşula uyanları yan yana görmek istiyorum aralarında boşluk olacak 

 final String ahmetCompany = "Ahmet";
 final String mehmetCompany = "Mehmet";
 final veliCompany = "veli";
 final String kxCompany = "kx";
 final String xCompany ="x"; //company isimleri değişmeyeceği için final değişkeni

const int companyLenght = 2;
String results = "";

 if (ahmetCompany.length > companyLenght) {
  results = results + ahmetCompany;
 }
 if (mehmetCompany.length > companyLenght) {
  results = results + mehmetCompany;
 }
 if (veliCompany.length > companyLenght) {
  results = results + veliCompany;
 }
 if (kxCompany.length > companyLenght) {
  results = results + kxCompany;
 }
 if (xCompany.length > companyLenght) {
  results += xCompany;
 }
 if (results.isEmpty) { // boş olup olmadığına bakıyor
  print("patron bulamadık");
 }else{
  print(results);
 }




}