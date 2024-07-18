// 产品接口
abstract class Product {
  void use();
}

// 具体产品
class ConcreteProduct1 implements Product {
  @override
  void use() {
    print('ConcreteProduct1: Doing something');
  }
}

class ConcreteProduct2 implements Product {
  @override
  void use() {
    print('ConcreteProduct2: Doing something');
  }
}

// 抽象工厂类
abstract class Creator {
  Product factoryMethod();
}

// 具体工厂类
class ConcreteCreator1 implements Creator {
  @override
  Product factoryMethod() {
    return ConcreteProduct1();
  }
}

class ConcreteCreator2 implements Creator {
  @override
  Product factoryMethod() {
    return ConcreteProduct2();
  }
}
