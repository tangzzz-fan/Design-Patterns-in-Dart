// 定义组件接口
abstract class Component {
  void operate();
}

// 具体组件
class ConcreteComponent implements Component {
  @override
  void operate() {
    print('ConcreteComponent');
  }
}

// 装饰者抽象类
abstract class Decorator implements Component {
  final Component _component;

  Decorator(this._component);

  @override
  void operate() {
    _component.operate();
  }
}

// 具体装饰者A
class ConcreteDecoratorA extends Decorator {
  ConcreteDecoratorA(Component component) : super(component);

  @override
  void operate() {
    super.operate();
    addedBehaviorA();
  }

  void addedBehaviorA() {
    print('Added Behavior A');
  }
}

// 具体装饰者B
class ConcreteDecoratorB extends Decorator {
  ConcreteDecoratorB(Component component) : super(component);

  @override
  void operate() {
    super.operate();
    addedBehaviorB();
  }

  void addedBehaviorB() {
    print('Added Behavior B');
  }
}
