Future<void> main(List<String> args) async {
  print("a");
  // 5sn bekle sonra gel. hiçbir müşteri alma
  Stream<int> bankMoneys =Stream.empty();
  bankMoneys = dataAddBankMoney(55, 3);
  //bankMoneys.listen((event) {
  //  print(event);
  //});
  print(await bankMoneys.where((event) => event == 258).toList()); //sekron çalışır.

  
  //await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //  await Future.delayed(Duration(seconds: 2));
  //  print('işlem bitti $element');
  //});
  //await Future.delayed(Duration(seconds: 2));
  print('ab');

  print('hello');
  Future.delayed(Duration(seconds: 0)).whenComplete(() {
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds:0)).whenComplete(() { //event loop yapısını bozmadan çalışır.
    print('hello4'); // hello hello3 hello2 hello4
  });
  
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    yield money;
    _localRetry++;
    yield money;
  }
    
  }
// bir servise cevap sonradan gelebilir. bu yüzden async kullanıyoruz.
// matematik zaman alıyor. bu yüzden async kullanıyoruz.
// işlemi yap devam et. cevap gelince devam et.
// sekronlar, asekron gibi thredi durdurmaz çalışan akış bittikten sonra sekronda çalışır.
// async denilince future kullanılır.

