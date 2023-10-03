void main(List<String> args) {
  final customerMouse = Mouses.a4;
  print(customerMouse.index);

  print(customerMouse.name);

  if (customerMouse == Mouses.a4) {} // bu kullanım aşağıdakine göre daha uygun

  if (customerMouse.name == "a4") {}

  if (customerMouse.isCheckName('a4')) {
    print('aa');
  }

}


enum Mouses { 
  magic,
  apple,
  logitech,
  a4,
}
//enum -> sınıflandırma
//enum aslında tamsayı sınıfıdır
//çok önemli


extension MousesSelectedExtension on Mouses { //11. satır
  bool isCheckName(String name){
    return this.name == name;
  }
}
