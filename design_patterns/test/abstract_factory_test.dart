// test/abstract_factory_test.dart
import 'package:design_patterns/design_patterns/abstract_factory.dart';
import 'package:test/test.dart';

void main() {
  test('ConcreteFactory1 creates correct products', () {
    var factory = ConcreteFactory1();
    var productA = factory.createProductA();
    var productB = factory.createProductB();

    expect(productA, isA<ConcreteProductA1>());
    expect(productB, isA<ConcreteProductB1>());
  });

  test('ConcreteFactory2 creates correct products', () {
    var factory = ConcreteFactory2();
    var productA = factory.createProductA();
    var productB = factory.createProductB();

    expect(productA, isA<ConcreteProductA2>());
    expect(productB, isA<ConcreteProductB2>());
  });
}
