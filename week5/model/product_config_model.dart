class ProductConfig{
  static final ProductConfig instance = ProductConfig._("a");

  final String apiKey;

  ProductConfig._(this.apiKey); // bu ._ ile ben bunu kapattım ve birilerinin apikey üretmesine engel olmuş oldum.
}
//yalnızca ProductConfig.instance.apikey; //yapanlar bunu görebilecek

class ProductLazySingleton{
  static ProductLazySingleton? _instace;
  static ProductLazySingleton get instance{
    if (_instace == null) _instace = ProductLazySingleton._init();
    return _instace!;
  }

  ProductLazySingleton._init();
}