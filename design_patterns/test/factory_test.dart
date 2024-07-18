// test/factory_test.dart
import 'package:design_patterns/design_patterns/factory.dart';
import 'package:test/test.dart';

void main() {
  test('ConcreteCreator1 creates ConcreteProduct1', () {
    var creator = ConcreteCreator1();
    var product = creator.factoryMethod();
    expect(product, isA<ConcreteProduct1>());
  });

  test('ConcreteCreator2 creates ConcreteProduct2', () {
    var creator = ConcreteCreator2();
    var product = creator.factoryMethod();
    expect(product, isA<ConcreteProduct2>());
  });
}
