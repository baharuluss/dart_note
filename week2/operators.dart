void main() {
  const int appleMoney = 20;
  const double discount = 2.5;

  int myMoney =30;

  myMoney = myMoney - (appleMoney ~/ discount); //truncating division operator
  print(myMoney);

  print(myMoney.isEven); // çift mi
  print(myMoney.isOdd); // tek mi

  // debug kullan ! 01:53:26 Debugging 

}