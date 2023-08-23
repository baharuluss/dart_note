void main() {
  final int classDegree = 45;
  bool isSucess = false;

  // 2 ise ekrana bravo
  // 1 ise olur
  // 0 ise yeterli
  // diğer durumlarda başarısız. 
  const int sucessValueHigh = 2;
  switch (classDegree) { //
    case sucessValueHigh:
      print("bravo");
      isSucess = true;
      break;
    case 1:
      print("olur");
      isSucess = true;
      break;
    case 0:
      print("yeterli");
      isSucess = true;
      break;
    default:
      print("başarısız");
      isSucess = false;
    
  }
  print("Beyefendi çocuğunuzun sonusu: $isSucess");
  //------
  // Mağazaya gelen isimlerden veli olan olursa print bravo yaz
  // ekin
  String name ="sxdcd";
  const String specialUser1 = "ekin";
  const String specialUser2 = "veli";
  switch (name) {
    case specialUser1:
    case specialUser2:
      print("bravoo");
      break;
    default:
      print("sorunlu");
    
  }
}