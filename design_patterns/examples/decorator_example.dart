import 'package:design_patterns/design_patterns/decorator.dart';

void main() {
  var component = ConcreteComponent();
  component.operate(); // Outputs: ConcreteComponent

  print('---');

  var decoratorA = ConcreteDecoratorA(component);
  decoratorA.operate(); // Outputs: ConcreteComponent -> Added Behavior A

  print('---');

  var decoratorB = ConcreteDecoratorB(component);
  decoratorB.operate(); // Outputs: ConcreteComponent -> Added Behavior B

  print('---');

  // 可以叠加装饰者
  var decoratorAB = ConcreteDecoratorA(decoratorB);
  decoratorAB
      .operate(); // Outputs: ConcreteComponent -> Added Behavior B -> Added Behavior A
}
