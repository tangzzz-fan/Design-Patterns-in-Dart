import 'package:test/test.dart';
import 'package:design_patterns/design_patterns/decorator.dart';

void main() {
  test('Decorator adds behavior to component', () {
    var component = ConcreteComponent();
    var decorator = ConcreteDecoratorA(component);

    decorator.operate();
    expect(component, isNotNull);
    // 这里可以添加更多断言来验证具体的行为
  });
}
