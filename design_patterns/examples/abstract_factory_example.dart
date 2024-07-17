// example.dart

import 'package:design_patterns/design_patterns/abstract_factory.dart';

void main() {
  // 使用工厂1
  AbstractFactory factory1 = ConcreteFactory1();
  ProductA productA1 = factory1.createProductA();
  ProductB productB1 = factory1.createProductB();
  productA1.use();
  productB1.use();

  print('---');

  // 使用工厂2
  AbstractFactory factory2 = ConcreteFactory2();
  ProductA productA2 = factory2.createProductA();
  ProductB productB2 = factory2.createProductB();
  productA2.use();
  productB2.use();
}
