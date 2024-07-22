class Singleton {
  static Singleton? _instance;
  final String _data;

  // 私有构造函数
  Singleton._internal(String data) : _data = data;

  // 工厂构造函数
  factory Singleton(String data) {
    _instance ??= Singleton._internal(data);
    return _instance!;
  }

  String getData() => _data;
}
