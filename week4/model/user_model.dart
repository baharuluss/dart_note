

// adı olmak zorunda
// parası olamak zorunda
// yaşını vermeyebilir
// citysini vermeyebilir
//city yoksa ist say
//id değişkenine sadece bu sınıf içinden erişebilsin -> private
class User {
  //özellikleri neler
  late final String name; // late bu değerin sonradan dolacağını söyler
  late int money;
  late final int? age; // ? işareti ekleyerek olma zorunluluğunu ortadan kaldırdık nullable
  late final String? city;

  late final String userCode;

  late final String _id;

  //Constructors
  User(String name, int money, { required String id, int? age, String? city}){ // neleri alacağımızı söylüyoruz. age ve city yan value
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    
    userCode = (city ?? "ist") + name ; // city gelmezse ist say
  }

bool isSpecialUser(String id) {
  return _id ==id;
  }

  //bool isEmptyId(){
  //  return _id.isEmpty;
  // }

  bool get isEmptyId => _id.isEmpty; //bunu kullanmak daha sağlıklı
}
