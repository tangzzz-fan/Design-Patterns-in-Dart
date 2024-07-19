// // 目标接口
// abstract class Target {
//   void request();
// }

// // 适配者类
// class Adaptee {
//   void specificRequest() {
//     print('Adaptee: Specific request.');
//   }
// }

// // 适配器类
// class Adapter implements Target {
//   final Adaptee _adaptee;

//   Adapter(this._adaptee);

//   @override
//   void request() {
//     _adaptee.specificRequest();
//   }
// }

// 目标接口
abstract class Target {
  String request();
}

// 适配者类
class Adaptee {
  String specificRequest() {
    return 'Adaptee: Specific request.';
  }
}

// 协议，用于访问私有成员
abstract class AdapterProtocol {
  String specificRequest();
}

// 适配器类
class Adapter implements Target, AdapterProtocol {
  final Adaptee _adaptee;

  Adapter(this._adaptee);

  @override
  String request() {
    return _adaptee.specificRequest();
  }

  @override
  String specificRequest() {
    return _adaptee.specificRequest();
  }
}
