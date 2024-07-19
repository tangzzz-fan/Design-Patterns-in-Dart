// // 策略接口
// abstract class Strategy {
//   void execute();
// }

// // 具体策略
// class ConcreteStrategyA implements Strategy {
//   @override
//   void execute() {
//     print('ConcreteStrategyA: Algorithm A');
//   }
// }

// class ConcreteStrategyB implements Strategy {
//   @override
//   void execute() {
//     print('ConcreteStrategyB: Algorithm B');
//   }
// }

// // 上下文
// class Context {
//   late Strategy _strategy;

//   Context(this._strategy);

//   void setStrategy(Strategy strategy) {
//     _strategy = strategy;
//   }

//   void executeStrategy() {
//     _strategy.execute();
//   }
// }

// 策略接口
abstract class Strategy {
  String execute();
}

// 具体策略A
class ConcreteStrategyA implements Strategy {
  @override
  String execute() {
    return 'ConcreteStrategyA: Algorithm A';
  }
}

// 具体策略B
class ConcreteStrategyB implements Strategy {
  @override
  String execute() {
    return 'ConcreteStrategyB: Algorithm B';
  }
}

// 上下文
class Context {
  Strategy _strategy;

  Context(this._strategy);

  void setStrategy(Strategy strategy) {
    _strategy = strategy;
  }

  String executeStrategy() {
    return _strategy.execute();
  }
}
