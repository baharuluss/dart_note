// daha basit kulanımı
class User2 {
  //özellikleri neler
  final String name; 
  int _money;
  int get money => _money; //encapsulation olayı

  //set money(int money){
  //  if(money < 0){ // parası 0 dan küçükse bu işlemi gerçekleştirmiyor fakat money e nullable bir değer atayamıyoruz. Null atamak için aşağıdaki kod
  //    return;
  //  }
  //  _money = money;
  //}

  //set money(int? money){   -> nullable kullanabilmek için güzel bir örnek 
  //  if(money == null){ 
  //    return;
  //  }
  //  _money = money;
  //}

  //ama en iyisi yukarıdakileri kullanmayıp bu kodu kullanmak:
   set Money(int? money){
    _money = money == null ? 0 : money; // eğer nullsa 0 yolla değilse normal money
   }

  final int? age; 
  final String? city;

  late final String userCode;

  User2(this.name, this._money, {this.age, this.city }){
    userCode = (city ?? "ist") + name;
  }

}
//model oluşturup private olan id ye ilk başta id veren erişecek
//veli hoca bu kullanımı öneriyor.
//encapsulation:değişkenin dışarıdan gelen seneryolardan etkilenmemesini koşula bağlanması olayıdır (getter-setter)