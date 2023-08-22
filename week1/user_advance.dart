void main() {
// oop: nesnelerin hep dinamik ve güvenlikte olması
  String userName =  "veli"; 
  var userName2 = 'Bahar'; // var da, değer atandıktan sonra veri türünü öğreniyor, yani var aldığı değere göre değişir.
// veli hoca tip kullanmayı öneriyor. 
  final int bankMoney = 100; // final olduğu vakit değişkenin değerini değiştiremiyoruz. Bir kere değer atıldı ve bitti 
//yani değişken sabitlemek için FINAL kullanıyoruz.
  const String bankName = "VB Bank"; // const da final gibi değiştirilemiyor.
//
/* const ve final arasındaki farklar
- final uygulama çalıştığında runtime daki son değerini alır. -> mesela time'ın o anki çalışan değerini alır ve time değerine atar.
- Const proje başladığında code compile oldu ne gözükürse o.
-
*/
//----
//Bank name = "VB BANK"
//bank user 1 = "bank1musteri"
//bank user 1 in parası 100.00
//bank1 müşteriye kimse dokunamaz!
//yeni bir müşteri gelecek adı bank2musteri
//yeni bankaya gelenden bu bank user1 parasını çıkartıp ekrana gösterelim

//camel case, kebap case, upper case, pascal case


const String bankNameSpecial = "VB Bank";
const String user1 = "Bank 1 müşteri";
const double user1Money = 100.00;

const String user2 = "Bank 2 müşteri";
int user2Money = 500;

user2Money =user2Money - user1Money.toInt();
//ekranda daha çok final yapıyoruz
print("User 2 money: $user2Money");
 
//----
//Odev2
//Benim bir halı saham var 100 kişi kapasiteli
//saat 10'da 20 kişilik bir musteri1 maç yapacak ve 20 kesin kesin gelecek
//saat 10'da musteri2 gelip bana 50 kişilik yer ayırtıcak
//bu işlem sonrasında benim halı saha kapasitem kaç kalmıştır.

const int musteri1 = 20;
const int musteri2 = 50;

const int saha= 100;
const int sum = musteri1 + musteri2 ;

const int kalanKapasite = saha - sum; 

print("kalan kapasite: $kalanKapasite");


}


