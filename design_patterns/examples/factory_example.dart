// example.dart

import 'package:design_patterns/design_patterns/factory.dart';

void main() {
  var creator1 = ConcreteCreator1();
  var product1 = creator1.factoryMethod();
  product1.use();

  print('---');

  var creator2 = ConcreteCreator2();
  var product2 = creator2.factoryMethod();
  product2.use();
}
