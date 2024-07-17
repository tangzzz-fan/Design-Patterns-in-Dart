// 抽象产品类
abstract class ProductA {
  void use();
}

abstract class ProductB {
  void use();
}

// 具体产品类
class ConcreteProductA1 implements ProductA {
  @override
  void use() {
    print('ConcreteProductA1: Doing something...');
  }
}

class ConcreteProductB1 implements ProductB {
  @override
  void use() {
    print('ConcreteProductB1: Doing something...');
  }
}

class ConcreteProductA2 implements ProductA {
  @override
  void use() {
    print('ConcreteProductA2: Doing something...');
  }
}

class ConcreteProductB2 implements ProductB {
  @override
  void use() {
    print('ConcreteProductB2: Doing something...');
  }
}

// 抽象工厂接口
abstract class AbstractFactory {
  ProductA createProductA();
  ProductB createProductB();
}

// 具体工厂类
class ConcreteFactory1 implements AbstractFactory {
  @override
  ProductA createProductA() {
    return ConcreteProductA1();
  }

  @override
  ProductB createProductB() {
    return ConcreteProductB1();
  }
}

class ConcreteFactory2 implements AbstractFactory {
  @override
  ProductA createProductA() {
    return ConcreteProductA2();
  }

  @override
  ProductB createProductB() {
    return ConcreteProductB2();
  }
}
